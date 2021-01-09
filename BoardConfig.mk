########################################################################
#                                                                      #
#               BoardConfig.mk For Alcatel Idol 5                      #
#                         From: A-TEAM                                 #
#                       by:lehmancurtis147                             #
# ____________________________________________________________________ #
#                                                                      #
#           Copyright(C) AUG 21, 2020   Curtis Lehman                  #
#                                                                      #
# This program is free software; you can redistribute it and/or modify #
# it under the terms of the GNU General Public License version 2 as    #
# published by the Free Software Foundation.                           #
#                                                                      #
# This program is distributed in the hope that it will be useful,      #
# but WITHOUT ANY WARRANTY; without even the implied warranty of       #
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.                 #
# See http://www.gnu.org/licenses/gpl-2.0.html for more details        #
########################################################################

DEVICE_PATH                     := device/alcatel/simba6_cricket

BOARD_VENDOR                    := TCL

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES      := true

# ARCHITECTURE
TARGET_ARCH                     := arm64
TARGET_ARCH_VARIANT             := armv8-a
TARGET_CPU_ABI                  := arm64-v8a
TARGET_CPU_ABI2                 :=
TARGET_CPU_ABILIST              := arm64-v8a,armeabi-v7a,armeabi
TARGET_CPU_ABILIST32            := armeabi-v7a,armeabi
TARGET_CPU_ABILIST64            := arm64-v8a
TARGET_CPU_VARIANT              := cortex-a53

TARGET_2ND_ARCH                 := arm
TARGET_2ND_ARCH_VARIANT         := armv7-a-neon
TARGET_2ND_CPU_ABI              := armeabi-v7a
TARGET_2ND_CPU_ABI2             := armeabi
TARGET_2ND_CPU_VARIANT          := cortex-a53

TARGET_BOARD_SUFFIX             := _64
TARGET_USES_64_BIT_BINDER       := true

## PLATFORM
TARGET_BOARD_PLATFORM           ?= mt6757
TARGET_BOARD_PLATFORM_GPU       := Mali-T720MP3

## BOOTLOADER
TARGET_NO_BOOTLOADER            := true
TARGET_BOOTLOADER_BOARD_NAME    := mt6757

## AVB
BOARD_AVB_ENABLE                := false

## KERNEL
TARGET_KERNEL_ARCH              := arm64
TARGET_KERNEL_HEADER_ARCH       := arm64
TARGET_USES_PREBUILT_KERNEL     := true
TARGET_PREBUILT_KERNEL          := $(DEVICE_PATH)/prebuilt/Image.gz-dtb
TARGET_RECOVERY_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz-dtb

## KERNEL CONFIGURATION
BOARD_KERNEL_IMAGE_NAME         := Image.gz-dtb
BOARD_KERNEL_PAGESIZE           := 2048
BOARD_KERNEL_BASE               := 0x40078000
BOARD_TAGS_OFFSET               := 0x03f88000
BOARD_KERNEL_OFFSET             := 0x00008000
BOARD_SECOND_OFFSET             := 0x00e88000
BOARD_RAMDISK_OFFSET            := 0x04f88000
BOARD_KERNEL_CMDLINE            := 'bootopt=64S3,32S1,32S1 buildvariant=eng androidboot.selinux=permissive'

## MKBOOT ARGUEMENTS
BOARD_MKBOOTIMG_ARGS := \
    --cmdline $(BOARD_KERNEL_CMDLINE) \
    --ramdisk_offset $(BOARD_RAMDISK_OFFSET) \
    --tags_offset $(BOARD_TAGS_OFFSET) \
    --kernel_offset $(BOARD_KERNEL_OFFSET) \
    --second_offset $(BOARD_SECOND_OFFSET) \
    --base $(BOARD_KERNEL_BASE) \
    --pagesize $(BOARD_KERNEL_PAGESIZE) \
    --board ''

# ASSERT
TARGET_OTA_ASSERT_DEVICE               := 'simba6_cricket'

## ENABLE CPUSETS
ENABLE_CPUSETS                         := true
ENABLE_SCHEDBOOST                      := true

## PARTITION SIZES
BOARD_BOOTIMAGE_PARTITION_SIZE         := 16777216
BOARD_CACHEIMAGE_PARTITION_SIZE        := 226492416
BOARD_SYSTEMIMAGE_PARTITION_SIZE       := 2415919104
BOARD_USERDATAIMAGE_PARTITION_SIZE     := 12809920000
#BOARD_RECOVERYIMAGE_PARTITION_SIZE     := 23435264

## PAGE SIZE * 64
BOARD_FLASH_BLOCK_SIZE                 := 131072

## FS-Types
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE      := ext4
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE     := ext4
#BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE     := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE   := ext4

## FILESYSTEMS
TARGET_USERIMAGES_USE_EXT4             := true
TARGET_USERIMAGES_USE_F2FS             := true
#TARGET_COPY_OUT_VENDOR                 := vendor

## MISC FS VARIABLES
BOARD_USES_MMCUTILS                    := true
BOARD_SUPPRESS_EMMC_WIPE               := true
BOARD_SUPPRESS_SECURE_ERASE            := true
BOARD_HAS_NO_MISC_PARTITION            := false
BOARD_BUILD_SYSTEM_ROOT_IMAGE          := false

## MTK Hardware
USE_OPENGL_RENDERER                    := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS        := 3

TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK  := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS  := true

PRESENT_TIME_OFFSET_FROM_VSYNC_NS      := 0

MTK_HWC_SUPPORT                        := yes
MTK_HWC_VERSION                        := 1.5.0

OVERRIDE_RS_DRIVER                     := libRSDriver_mtk.so

BOARD_USES_MTK_AUDIO                   := true
BOARD_HAS_MTK_HARDWARE                 := true
BOARD_USES_MTK_HARDWARE                := true
BOARD_HAS_LARGE_FILESYSTEM             := true
BOARD_CHARGER_ENABLE_SUSPEND           := true
BOARD_CHARGER_SHOW_PERCENTAGE          := true
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true

## PROPERTIES
TARGET_SYSTEM_PROP                     += $(DEVICE_PATH)/system.prop
TARGET_LDPRELOAD                       += libmtk_symbols.so
TARGET_OMX_LEGACY_RESCALING            := true

## RECOVERY DETAILS
AB_OTA_UPDATER                         := false

BOARD_RECOVERY_SWIPE                   := true
BOARD_HAS_NO_REAL_SDCARD               := false
BOARD_HAS_NO_SELECT_BUTTON             := true

TARGET_PROVIDES_KEYMASTER              := true
TARGET_USES_RECOVERY_AS_BOOT           := false

RECOVERY_SDCARD_ON_DATA                := true
RECOVERY_GRAPHICS_USE_LINELENGTH       := true

TARGET_RECOVERY_PIXEL_FORMAT           := "BGRA_8888"
TARGET_RECOVERY_FSTAB                  := $(DEVICE_PATH)/recovery/root/etc/twrp.fstab
TARGET_RECOVERY_INIT_RC                := $(DEVICE_PATH)/recovery/root/init.recovery.mt6757.rc

# Hack: prevent anti rollback
PLATFORM_SECURITY_PATCH                := 2099-12-31
PLATFORM_VERSION                       := 16.1.0

## TEAM WIN RECOVERY PROJECT PROPERTIES
TW_THEME                               := portrait_hdpi
TW_USE_TOOLBOX                         := true
TW_NO_BATT_PERCENT                     := true
TW_SCREEN_BLANK_ON_BOOT                := true
TW_EXTRA_LANGUAGES                     := true
TW_INCLUDE_FB2PNG                      := true
TW_INCLUDE_CRYPTO                      := true
TW_MAX_BRIGHTNESS                      := 255
TW_DEVICE_VERSION                      := 0
TW_NO_SCREEN_BLANK                     := true
TW_INPUT_BLACKLIST                     := "hbtp_vm"
TW_BRIGHTNESS_PATH                     := "/sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness"
TW_CUSTOM_CPU_TEMP_PATH                := "/sys/devices/virtual/thermal/thermal_zone1/temp"
TW_CUSTOM_BATTERY_PATH                 := "/sys/devices/platform/battery/power_supply/battery"

TWHAVE_SELINUX                         := true

## ID
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
