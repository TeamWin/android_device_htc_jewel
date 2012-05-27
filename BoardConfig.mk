USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/htc/jewel/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := jewel

# Platform
TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 -DQCOM_HARDWARE

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true


BOARD_KERNEL_CMDLINE :=  console=ttyHSL0,115200,n8 androidboot.hardware=jet
BOARD_KERNEL_BASE :=  0x80400000
BOARD_FORCE_RAMDISK_ADDRESS := 0x81800000
BOARD_KERNEL_PAGESIZE := 4096

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/htc/jewel/kernAl

TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun0/file

# Recovery:Start

# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true

# Recovery: set depending on recovery being built for. (CWM or TWRP)
#           both init scripts can be found in the recovery folder
TARGET_RECOVERY_INITRC := device/htc/jewel/recovery/init-twrp.rc

# TWRP specific build flags
DEVICE_RESOLUTION := 720x1280
TW_INTERNAL_STORAGE_PATH := "/internal_sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "internal_sdcard"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_INCLUDE_DUMLOCK := true
