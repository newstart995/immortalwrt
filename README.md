在 GitHub Actions 上为 RAX3000M 编译 ImmortalWrt / OpenWrt 固件时，需要理清“固件打包”与“应用部署”的边界：

Docker 容器应用（Immich、Vaultwarden、1Panel）不应打包进固件镜像本身。这些应用体积庞大（例如 Immich 镜像上百兆，且依赖 PostgreSQL 等大镜像），如果直接打进 squashfs 固件，会导致固件超出路由器分区限制（无法写入），或者占用大量 precious 的内核固件空间。

最佳实践策略：

固件内集成：只在 GitHub Actions 中集成 Docker 引擎（docker + dockerd）、底层服务（AdGuard Home、Transmission、qBittorrent）以及基础存储驱动（kmod-fs-ext4 等）。

运行期部署：刷入固件后，挂载外接硬盘/eMMC 分区，在 Docker 中一键拉取运行 Immich、Vaultwarden 以及 1Panel。

Swap 挂载： Swap 文件必须存在于有写权限的具体文件系统（如外接硬盘或 /overlay）上，因此宜在 GitHub compile 脚本中通过 uci 预设开机挂载脚本，或在系统首次启动脚本（uci-defaults）中自动创建。

一、 GitHub Actions .config 关键配置清单
在你的 GitHub Actions 编译脚本或自定义 .config 文件中，添加以下软件包（以 ImmortalWrt 为例）：

Ini, TOML
# --- 目标架构选择 (RAX3000M MT7981) ---
CONFIG_TARGET_mediatek=y
CONFIG_TARGET_mediatek_filogic=y
CONFIG_TARGET_mediatek_filogic_DEVICE_cmcc_rax3000m=y

# --- Docker 容器引擎与 Compose 支持 ---
CONFIG_PACKAGE_docker=y
CONFIG_PACKAGE_dockerd=y
CONFIG_PACKAGE_docker-compose=y
CONFIG_PACKAGE_luci-app-dockerman=y

# --- 硬盘挂载与 ext4 文件系统支持 ---
CONFIG_PACKAGE_kmod-fs-ext4=y
CONFIG_PACKAGE_e2fsprogs=y
CONFIG_PACKAGE_block-mount=y
CONFIG_PACKAGE_luci-app-diskman=y

# --- 路由器原生服务应用 ---
# 1. AdGuard Home
CONFIG_PACKAGE_adguardhome=y
CONFIG_PACKAGE_luci-app-adguardhome=y

# 2. Transmission
CONFIG_PACKAGE_transmission-daemon-openssl=y
CONFIG_PACKAGE_luci-app-transmission=y

# 3. qBittorrent
CONFIG_PACKAGE_qbittorrent=y
CONFIG_PACKAGE_luci-app-qbittorrent=y
二、 自动创建与挂载 2GB Swap（uci-defaults 自动脚本）
为了实现“刷入固件开机后自动在 64GB eMMC 分区/挂载盘创建并启用 2GB Swap”，我们可以在编译源码的 files/etc/uci-defaults/ 目录下添加一个初始化脚本。

在 GitHub Actions 仓库中创建路径：files/etc/uci-defaults/99-setup-swap，内容如下：

Bash
#!/bin/sh

SWAP_PATH="/overlay/swapfile"

# 检查是否已存在 swap 文件，若不存在则创建
if [ ! -f "$SWAP_PATH" ]; then
    # 在 /overlay 上创建 2048M (2GB) 空文件
    dd if=/dev/zero of=$SWAP_PATH bs=1M count=2048
    chmod 600 $SWAP_PATH
    mkswap $SWAP_PATH
fi

# 配置 sysctl 降低 swappiness（适合 eMMC 延长寿命）
if ! grep -q "vm.swappiness=20" /etc/sysctl.conf; then
    echo "vm.swappiness=20" >> /etc/sysctl.conf
    sysctl -p
fi

# 在 UCI 中注册 Swap 自动挂载
uci add fstab swap
uci set fstab.@swap[-1].device="$SWAP_PATH"
uci set fstab.@swap[-1].enabled='1'
uci commit fstab

# 立即激活
swapon $SWAP_PATH

exit 0
提示：GitHub 编译时，files/ 目录下的所有文件会被直接打进固件根目录，刷机后系统首次启动会执行 uci-defaults 里的脚本并自动删除它，实现全自动无感配置。

三、 GitHub Actions Workflow 示例工作流
这里提供一份极简的 .github/workflows/build-immortalwrt.yml 关键节点参考：

YAML
name: Build ImmortalWrt for RAX3000M

on:
  workflow_dispatch:

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v4

      - name: Initialization environment
        env:
          DEBIAN_FRONTEND: noninteractive
        run: |
          sudo apt-get update
          sudo apt-get install -y build-essential clang flex bison gasm awk gettext ccache

      - name: Clone source code
        run: |
          git clone -b master --single-branch https://github.com/immortalwrt/immortalwrt.git openwrt
          cd openwrt
          ./scripts/feeds update -a
          ./scripts/feeds install -a

      - name: Load Custom Configuration & Files
        run: |
          # 复制自定义 .config 到源码目录
          [ -e .config ] && cp .config openwrt/.config
          # 复制包含 Swap 脚本的 files 目录
          [ -d files ] && cp -r files openwrt/files

      - name: Compile the firmware
        run: |
          cd openwrt
          make defconfig
          make download -j8
          make -j$(nproc) V=s

      - name: Upload firmware
        uses: actions/upload-artifact@v4
        with:
          name: ImmortalWrt_RAX3000M
          path: openwrt/bin/targets/mediatek/filogic/*rax3000m*
四、 刷入固件后的部署步骤（Docker 部分）
固件刷入并重启后，登录 OpenWrt 终端即可一键完成 1Panel 及其他 Docker 容器的部署：

验证 Swap 是否正常启动：

Bash
free -m
查看 Swap 行的总容量是否显示为 ~2048MB。

部署 1Panel：

Bash
curl -sSL https://resource.fit2cloud.com/1panel/package/quick_start.sh -o quick_start.sh && sh quick_start.sh
部署 Immich & Vaultwarden：
登入 1Panel Web 管理界面，进入 应用商店：

一键安装 Vaultwarden。

一键安装 Immich（挂载路径选择你的外接 ext4 硬盘目录，如 /mnt/sda1/immich）。
