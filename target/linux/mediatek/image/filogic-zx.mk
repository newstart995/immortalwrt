define Device/ZX7981PG
  DEVICE_VENDOR := ZX
  DEVICE_MODEL := ZX7981PG
  DEVICE_DTS := mt7981b-ZX7981PG
  DEVICE_DTS_DIR := ../dts
  SUPPORTED_DEVICES += ZX7981PG
  DEVICE_PACKAGES := kmod-mt7915e kmod-mt7981-firmware mt7981-wo-firmware kmod-usb3
  UBINIZE_OPTS := -E 5
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  IMAGE_SIZE := 115328k
  KERNEL_IN_UBI := 1
  IMAGES += factory.bin
  IMAGE/factory.bin := append-ubi | check-size $$$$(IMAGE_SIZE)
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
endef
TARGET_DEVICES += ZX7981PG

define Device/ZX7981PGE
  DEVICE_VENDOR := ZX
  DEVICE_MODEL := ZX7981PGE
  DEVICE_DTS := mt7981b-ZX7981PGE
  DEVICE_DTS_DIR := ../dts
  SUPPORTED_DEVICES += ZX7981PGE
  DEVICE_PACKAGES := kmod-mt7915e kmod-mt7981-firmware mt7981-wo-firmware kmod-usb3
  UBINIZE_OPTS := -E 5
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  IMAGE_SIZE := 115328k
  KERNEL_IN_UBI := 1
  IMAGES += factory.bin
  IMAGE/factory.bin := append-ubi | check-size $$$$(IMAGE_SIZE)
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
endef
TARGET_DEVICES += ZX7981PGE

define Device/ZX7981PS
  DEVICE_VENDOR := ZX
  DEVICE_MODEL := ZX7981PS
  DEVICE_DTS := mt7981b-ZX7981PS
  DEVICE_DTS_DIR := ../dts
  SUPPORTED_DEVICES += ZX7981PS
  DEVICE_PACKAGES := kmod-mt7915e kmod-mt7981-firmware mt7981-wo-firmware kmod-usb3
  UBINIZE_OPTS := -E 5
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  IMAGE_SIZE := 115328k
  KERNEL_IN_UBI := 1
  IMAGES += factory.bin
  IMAGE/factory.bin := append-ubi | check-size $$$$(IMAGE_SIZE)
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
endef
TARGET_DEVICES += ZX7981PS

define Device/ZX7981PSE
  DEVICE_VENDOR := ZX
  DEVICE_MODEL := ZX7981PSE
  DEVICE_DTS := mt7981b-ZX7981PSE
  DEVICE_DTS_DIR := ../dts
  SUPPORTED_DEVICES += ZX7981PGE
  DEVICE_PACKAGES := kmod-mt7915e kmod-mt7981-firmware mt7981-wo-firmware kmod-usb3
  UBINIZE_OPTS := -E 5
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  IMAGE_SIZE := 115328k
  KERNEL_IN_UBI := 1
  IMAGES += factory.bin
  IMAGE/factory.bin := append-ubi | check-size $$$$(IMAGE_SIZE)
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
endef
TARGET_DEVICES += ZX7981PSE

define Device/ZX7981PC
  DEVICE_VENDOR := ZX
  DEVICE_MODEL := ZX7981PC
  DEVICE_DTS := mt7981b-ZX7981PC
  DEVICE_DTS_DIR := ../dts
  SUPPORTED_DEVICES += ZX7981PC
  DEVICE_PACKAGES := kmod-mt7915e kmod-mt7981-firmware mt7981-wo-firmware kmod-usb3
  UBINIZE_OPTS := -E 5
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  IMAGE_SIZE := 115328k
  KERNEL_IN_UBI := 1
  IMAGES += factory.bin
  IMAGE/factory.bin := append-ubi | check-size $$$$(IMAGE_SIZE)
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
endef
TARGET_DEVICES += ZX7981PC

define Device/ZX7981PD
  DEVICE_VENDOR := ZX
  DEVICE_MODEL := ZX7981PD
  DEVICE_DTS := mt7981b-ZX7981PD
  DEVICE_DTS_DIR := ../dts
  SUPPORTED_DEVICES += ZX7981PD
  DEVICE_PACKAGES := kmod-mt7915e kmod-mt7981-firmware mt7981-wo-firmware kmod-usb3
  UBINIZE_OPTS := -E 5
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  IMAGE_SIZE := 115328k
  KERNEL_IN_UBI := 1
  IMAGES += factory.bin
  IMAGE/factory.bin := append-ubi | check-size $$$$(IMAGE_SIZE)
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
endef
TARGET_DEVICES += ZX7981PD

define Device/ZX7981PDE
  DEVICE_VENDOR := ZX
  DEVICE_MODEL := ZX7981PDE
  DEVICE_DTS := mt7981b-ZX7981PDE
  DEVICE_DTS_DIR := ../dts
  SUPPORTED_DEVICES += ZX7981PDE
  DEVICE_PACKAGES := kmod-mt7915e kmod-mt7981-firmware mt7981-wo-firmware kmod-usb3
  UBINIZE_OPTS := -E 5
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  IMAGE_SIZE := 115328k
  KERNEL_IN_UBI := 1
  IMAGES += factory.bin
  IMAGE/factory.bin := append-ubi | check-size $$$$(IMAGE_SIZE)
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
endef
TARGET_DEVICES += ZX7981PDE

define Device/ZX7981PM
  DEVICE_VENDOR := ZX
  DEVICE_MODEL := ZX7981PM
  DEVICE_DTS := mt7981b-ZX7981PM
  DEVICE_DTS_DIR := ../dts
  SUPPORTED_DEVICES += ZX7981PM
  DEVICE_PACKAGES := kmod-mt7915e kmod-mt7981-firmware mt7981-wo-firmware kmod-usb3
  UBINIZE_OPTS := -E 5
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  IMAGE_SIZE := 115328k
  KERNEL_IN_UBI := 1
  IMAGES += factory.bin
  IMAGE/factory.bin := append-ubi | check-size $$$$(IMAGE_SIZE)
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
endef
TARGET_DEVICES += ZX7981PM

define Device/ZX7981PME
  DEVICE_VENDOR := ZX
  DEVICE_MODEL := ZX7981PME
  DEVICE_DTS := mt7981b-ZX7981PME
  DEVICE_DTS_DIR := ../dts
  SUPPORTED_DEVICES += ZX7981PME
  DEVICE_PACKAGES := kmod-mt7915e kmod-mt7981-firmware mt7981-wo-firmware kmod-usb3
  UBINIZE_OPTS := -E 5
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  IMAGE_SIZE := 115328k
  KERNEL_IN_UBI := 1
  IMAGES += factory.bin
  IMAGE/factory.bin := append-ubi | check-size $$$$(IMAGE_SIZE)
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
endef
TARGET_DEVICES += ZX7981PME

define Device/ZX7981PMN
  DEVICE_VENDOR := ZX
  DEVICE_MODEL := ZX7981PMN
  DEVICE_DTS := mt7981b-ZX7981PMN
  DEVICE_DTS_DIR := ../dts
  SUPPORTED_DEVICES += ZX7981PMN
  DEVICE_PACKAGES := kmod-mt7915e kmod-mt7981-firmware mt7981-wo-firmware kmod-usb3
  UBINIZE_OPTS := -E 5
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  IMAGE_SIZE := 115328k
  KERNEL_IN_UBI := 1
  IMAGES += factory.bin
  IMAGE/factory.bin := append-ubi | check-size $$$$(IMAGE_SIZE)
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
endef
TARGET_DEVICES += ZX7981PMN

define Device/ZX7981PMNE
  DEVICE_VENDOR := ZX
  DEVICE_MODEL := ZX7981PMNE
  DEVICE_DTS := mt7981b-ZX7981PMNE
  DEVICE_DTS_DIR := ../dts
  SUPPORTED_DEVICES += ZX7981PMNE
  DEVICE_PACKAGES := kmod-mt7915e kmod-mt7981-firmware mt7981-wo-firmware kmod-usb3
  UBINIZE_OPTS := -E 5
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  IMAGE_SIZE := 115328k
  KERNEL_IN_UBI := 1
  IMAGES += factory.bin
  IMAGE/factory.bin := append-ubi | check-size $$$$(IMAGE_SIZE)
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
endef
TARGET_DEVICES += ZX7981PMNE

define Device/ZX7981EM
  DEVICE_VENDOR := ZX
  DEVICE_MODEL := ZX7981EM
  DEVICE_DTS := mt7981b-ZX7981EM
  DEVICE_DTS_DIR := ../dts
  SUPPORTED_DEVICES := ZX7981EM
  DEVICE_PACKAGES := mkf2fs e2fsprogs blkid blockdev losetup kmod-fs-ext4 \
         kmod-mmc kmod-fs-f2fs kmod-fs-vfat kmod-nls-cp437 \
         kmod-nls-iso8859-1 f2fsck kmod-mt7915e kmod-mt7981-firmware mt7981-wo-firmware
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
endef
TARGET_DEVICES += ZX7981EM

define Device/ZX7981PI
  DEVICE_VENDOR := ZX
  DEVICE_MODEL := ZX7981PI
  DEVICE_DTS := mt7981b-ZX7981PI
  DEVICE_DTS_DIR := ../dts
  SUPPORTED_DEVICES += ZX7981PI
  DEVICE_PACKAGES := kmod-mt7915e kmod-mt7981-firmware mt7981-wo-firmware kmod-usb3
  UBINIZE_OPTS := -E 5
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  IMAGE_SIZE := 115328k
  KERNEL_IN_UBI := 1
  IMAGES += factory.bin
  IMAGE/factory.bin := append-ubi | check-size $$$$(IMAGE_SIZE)
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
endef
TARGET_DEVICES += ZX7981PI

define Device/ZX7981PIE
  DEVICE_VENDOR := ZX
  DEVICE_MODEL := ZX7981PIE
  DEVICE_DTS := mt7981b-ZX7981PIE
  DEVICE_DTS_DIR := ../dts
  SUPPORTED_DEVICES += ZX7981PIE
  DEVICE_PACKAGES := kmod-mt7915e kmod-mt7981-firmware mt7981-wo-firmware kmod-usb3
  UBINIZE_OPTS := -E 5
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  IMAGE_SIZE := 115328k
  KERNEL_IN_UBI := 1
  IMAGES += factory.bin
  IMAGE/factory.bin := append-ubi | check-size $$$$(IMAGE_SIZE)
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
endef
TARGET_DEVICES += ZX7981PIE

define Device/ZX7981P
  DEVICE_VENDOR := ZX
  DEVICE_MODEL := ZX7981P
  DEVICE_DTS := mt7981b-ZX7981P
  DEVICE_DTS_DIR := ../dts
  SUPPORTED_DEVICES += ZX7981P
  DEVICE_PACKAGES := kmod-mt7915e kmod-mt7981-firmware mt7981-wo-firmware kmod-usb3
  UBINIZE_OPTS := -E 5
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  IMAGE_SIZE := 115328k
  KERNEL_IN_UBI := 1
  IMAGES += factory.bin
  IMAGE/factory.bin := append-ubi | check-size $$$$(IMAGE_SIZE)
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
endef
TARGET_DEVICES += ZX7981P

define Device/ZX7981PE
  DEVICE_VENDOR := ZX
  DEVICE_MODEL := ZX7981PE
  DEVICE_DTS := mt7981b-ZX7981PE
  DEVICE_DTS_DIR := ../dts
  SUPPORTED_DEVICES += ZX7981PE
  DEVICE_PACKAGES := kmod-mt7915e kmod-mt7981-firmware mt7981-wo-firmware kmod-usb3
  UBINIZE_OPTS := -E 5
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  IMAGE_SIZE := 115328k
  KERNEL_IN_UBI := 1
  IMAGES += factory.bin
  IMAGE/factory.bin := append-ubi | check-size $$$$(IMAGE_SIZE)
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
endef
TARGET_DEVICES += ZX7981PE

define Device/ZX7981POW
  DEVICE_VENDOR := ZX
  DEVICE_MODEL := ZX7981POW
  DEVICE_DTS := mt7981b-ZX7981POW
  DEVICE_DTS_DIR := ../dts
  SUPPORTED_DEVICES += ZX7981POW
  DEVICE_PACKAGES := kmod-mt7915e kmod-mt7981-firmware mt7981-wo-firmware kmod-usb3
  UBINIZE_OPTS := -E 5
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  IMAGE_SIZE := 115328k
  KERNEL_IN_UBI := 1
  IMAGES += factory.bin
  IMAGE/factory.bin := append-ubi | check-size $$$$(IMAGE_SIZE)
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
endef
TARGET_DEVICES += ZX7981POW

define Device/ZX7981POWE
  DEVICE_VENDOR := ZX
  DEVICE_MODEL := ZX7981POWE
  DEVICE_DTS := mt7981b-ZX7981POWE
  DEVICE_DTS_DIR := ../dts
  SUPPORTED_DEVICES += ZX7981POWE
  DEVICE_PACKAGES := kmod-mt7915e kmod-mt7981-firmware mt7981-wo-firmware kmod-usb3
  UBINIZE_OPTS := -E 5
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  IMAGE_SIZE := 115328k
  KERNEL_IN_UBI := 1
  IMAGES += factory.bin
  IMAGE/factory.bin := append-ubi | check-size $$$$(IMAGE_SIZE)
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
endef
TARGET_DEVICES += ZX7981POWE

define Device/ZX7981POEQ
  DEVICE_VENDOR := ZX
  DEVICE_MODEL := ZX7981POEQ
  DEVICE_DTS := mt7981b-ZX7981POEQ
  DEVICE_DTS_DIR := ../dts
  SUPPORTED_DEVICES += ZX7981POEQ
  DEVICE_PACKAGES := kmod-mt7915e kmod-mt7981-firmware mt7981-wo-firmware kmod-usb3
  UBINIZE_OPTS := -E 5
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  IMAGE_SIZE := 115328k
  KERNEL_IN_UBI := 1
  IMAGES += factory.bin
  IMAGE/factory.bin := append-ubi | check-size $$$$(IMAGE_SIZE)
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
endef
TARGET_DEVICES += ZX7981POEQ

define Device/ZX7981PO
  DEVICE_VENDOR := ZX
  DEVICE_MODEL := ZX7981PO
  DEVICE_DTS := mt7981b-ZX7981PO
  DEVICE_DTS_DIR := ../dts
  SUPPORTED_DEVICES += ZX7981PO
  DEVICE_PACKAGES := kmod-mt7915e kmod-mt7981-firmware mt7981-wo-firmware kmod-usb3
  UBINIZE_OPTS := -E 5
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  IMAGE_SIZE := 115328k
  KERNEL_IN_UBI := 1
  IMAGES += factory.bin
  IMAGE/factory.bin := append-ubi | check-size $$$$(IMAGE_SIZE)
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
endef
TARGET_DEVICES += ZX7981PO
