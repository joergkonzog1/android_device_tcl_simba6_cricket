#
# Copyright (C) 2017 The Android Open Source Project
# Copyright (C) 2017 The TWRP Open Source Project
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

# Specify phone tech before including full_phone
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, build/target/product/embedded.mk)

# Inherit Telephony packages
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit language packages
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit 64bit support
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# boot animation size
TARGET_BOOTANIMATION_SIZE := 1080x1920

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE       := simba6_cricket
PRODUCT_NAME         := omni_simba6_cricket
PRODUCT_BRAND        := TCL
PRODUCT_MODEL        := Alcatel Idol 5
PRODUCT_MANUFACTURER := Alcatel
PRODUCT_RELEASE_NAME := simba6_cricket

PRODUCT_PACKAGES += \
    adbd \
    fastboot \
    healthd \
    fuelgauged_static \
    boot_control \
    power.default \
    power.mt6750 \
    kpoc_charger \
    fuelgauged \
    libfgauge \
    fuelgauged_static \
    libfuelgauge_static \
    gzip
