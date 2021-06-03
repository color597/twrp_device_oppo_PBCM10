#
# Copyright (C) 2021 The Android Open Source Project
# Copyright (C) 2021 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_BRAND := OPPO
PRODUCT_DEVICE := PBCM10
PRODUCT_MANUFACTURER := OPPO
PRODUCT_NAME := twrp_PBCM10
PRODUCT_MODEL := OPPO R15x

PRODUCT_PACKAGES += \
    qcom_decrypt

# For ADB Debug
PRODUCT_PROPERTY_OVERRIDES += \
    ro.secure=0 \
    ro.adb.secure=0 \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1 \
    persist.sys.usb.config=adb
