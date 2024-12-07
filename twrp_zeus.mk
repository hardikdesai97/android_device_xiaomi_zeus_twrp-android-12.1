#
# Copyright 2018 The Android Open Source Project
# Copyright 2014-2022 The Team Win LLC
#
# SPDX-License-Identifier: Apache-2.0
#

# Release name
PRODUCT_RELEASE_NAME := zeus

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := zeus
PRODUCT_NAME := twrp_zeus
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Xiaomi 12 Pro
PRODUCT_MANUFACTURER := Xiaomi

# Assert
TARGET_OTA_ASSERT_DEVICE := $(PRODUCT_RELEASE_NAME)

# Kernel modules
TW_LOAD_VENDOR_MODULES := "adsp_loader_dlkm.ko fts_touch_spi.ko"

# Haptic
TW_SUPPORT_INPUT_AIDL_HAPTICS := true
TW_SUPPORT_INPUT_AIDL_HAPTICS_FQNAME := "IVibrator/vibratorfeature"

# Theme
TW_STATUS_ICONS_ALIGN := center
TW_Y_OFFSET := 106
TW_H_OFFSET := -106

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, $(DEVICE_PATH)/device.mk)
