#
# Copyright (C) 2017 The Android Open Source Project
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
DEVICE_PATH := device/alcatel/simba6_cricket

# Release name
PRODUCT_RELEASE_NAME := simba6_cricket

# Specify phone tech before including full_phone
<<<<<<< HEAD
#$(call inherit-product, vendor/omni/config/gsm.mk)
=======
$(call inherit-product, vendor/omni/config/gsm.mk)
>>>>>>> 458812b9ea1783e537ec5f9434127a0884e2f1f6
$(call inherit-product, build/target/product/product_launched_with_n.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, build/target/product/embedded.mk)

# Inherit Telephony packages
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit language packages
#$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit 64bit support
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE        := simba6_cricket
PRODUCT_NAME          := omni_simba6_cricket
PRODUCT_BRAND         := TCL
PRODUCT_MODEL         := 6060C
PRODUCT_MANUFACTURER  := Alcatel
PRODUCT_RELEASE_NAME  := Alcatel Idol 5

PRODUCT_PACKAGES += \
    adbd \
    fastboot \
    healthd \
    fuelgauged_static \
    boot_control \
<<<<<<< HEAD
    power.default \
    power.mt6750 \
    kpoc_charger \
    fuelgauged \
    libfgauge \
    fuelgauged_static \
    libfgauge_stati
=======
    gzip
>>>>>>> 458812b9ea1783e537ec5f9434127a0884e2f1f6
