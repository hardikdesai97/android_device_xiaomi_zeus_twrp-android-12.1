#
# Copyright 2018 The Android Open Source Project
# Copyright 2014-2022 The Team Win LLC
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Installs gsi keys into ramdisk, to boot a GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Ihnerit virtual_ab_ota product
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Configure SDCard replacement functionality
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Configure twrp
$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_PACKAGES += \
    bootctrl.xiaomi_sm8450.recovery \
    android.hardware.boot@1.2-impl-qti.recovery

# SHIPPING API
PRODUCT_SHIPPING_API_LEVEL := 31
# VNDK API
PRODUCT_TARGET_VNDK_VERSION := 31

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)
# otacert
PRODUCT_EXTRA_RECOVERY_KEYS += \
    $(DEVICE_PATH)/security/miui_releasekey \

TWRP_REQUIRED_MODULES += \
    miui_prebuilt \
    magisk_prebuilt \
