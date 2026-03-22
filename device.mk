#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/lenovo/TB-X505X

# Touch Firmware
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/prebuilt/vendor/firmware/AbovCapSense.BIN:recovery/root/vendor/firmware/AbovCapSense.BIN

# Touch Fix Script
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/bin/touch_fix.sh:recovery/root/bin/touch_fix.sh
