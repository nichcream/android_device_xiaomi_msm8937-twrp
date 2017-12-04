#
# Copyright (C) 2016 The CyanogenMod Project
#           (C) 2017 The LineageOS Project
# Copyright (C) 2017 The XPerience Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/xiaomi/land

# Architecture
TARGET_BOARD_SUFFIX := _64
TARGET_ARCH 	    	:= arm64
TARGET_ARCH_VARIANT 	:= armv8-a
TARGET_CPU_ABI 		:= arm64-v8a
TARGET_CPU_ABI2 	:=
TARGET_CPU_VARIANT 	:= cortex-a53

# Second architecture
TARGET_2ND_ARCH 	:= arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI 	:= armeabi-v7a
TARGET_2ND_CPU_ABI2 	:= armeabi
TARGET_2ND_CPU_VARIANT 	:= cortex-a53

TARGET_BOARD_PLATFORM 	  := msm8937
TARGET_BOARD_PLATFORM_GPU := qcom-adreno505

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME 	:= msm8937
TARGET_NO_BOOTLOADER 		:= true

# kernel
BOARD_KERNEL_BASE		:= 0x80000000
BOARD_KERNEL_CMDLINE 		:= androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 androidboot.bootdevice=7824900.sdhci earlycon=msm_hsl_uart,0x78B0000 androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE 		:=  2048
BOARD_MKBOOTIMG_ARGS 		:= --ramdisk_offset 0x01000000 --second_offset 0x00f00000 --tags_offset 0x00000100
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/kernel

# Clang
INTERNAL_LOCAL_CLANG_EXCEPTION_PROJECTS := external/busybox/

# Encryption
TW_INCLUDE_CRYPTO := true
TARGET_HW_DISK_ENCRYPTION := true
TARGET_CRYPTFS_HW_PATH := $(DEVICE_PATH)/cryptfs_hw

# Keystore
TARGET_KEYMASTER_WAIT_FOR_QSEE := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE     := 67108864
BOARD_CACHEIMAGE_PARTITION_SIZE    := 258998272
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 3119513600 
BOARD_USERDATAIMAGE_PARTITION_SIZE := 10365157376 #10365173760 - 16384 use the 16gb version
BOARD_FLASH_BLOCK_SIZE 		   := 131072

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USERIMAGES_USE_EXT4         := true
TARGET_USERIMAGES_USE_F2FS         := true
TARGET_RECOVERY_FSTAB     := $(DEVICE_PATH)/recovery.fstab
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
TARGET_RECOVERY_QCOM_RTC_FIX := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true

# Qualcomm support
BOARD_USES_QCOM_HARDWARE := true

# TWRP specific flags
TW_THEME := portrait_hdpi
TW_MAX_BRIGHTNESS := 255
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_DEFAULT_BRIGHTNESS := 120
TW_EXCLUDE_SUPERSU := true
TW_INCLUDE_FUSE_EXFAT := true
TW_INCLUDE_FUSE_NTFS := true
TW_INCLUDE_NTFS_3G := true
TW_IGNORE_MISC_WIPE_DATA := true
TW_NEW_ION_HEAP := true

# Additional Asian languages
TW_EXTRA_LANGUAGES := true
