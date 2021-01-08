#!/use/bin/env bash
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

TARGET_DEVICE="US0A_ATT"

export TARGET_DEVICE=$TARGET_DEVICE

add_lunch_combo omni_simba6_cricket-userdebug
add_lunch_combo omni_simba6_cricket-eng

export LC_ALL="C" \
    ARCH="arm" \
    ALLOW_MISSING_DEPENDENCIES="true" \
    BUILD_TYPE="Official" \
    TARGET_DEVICE="simba6_crickei" \
    TARGET_DEVICE_ALT="simba6_crickei" \
    TW_MAINTAINER="lehmancurtis147"

if [[ "$TARGET_DEVICE" == simba6 ]]; then
    export TARGET_DEVICE="simba6_cricket"
fi
