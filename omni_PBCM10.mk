$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit some common Omni stuff
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_BRAND := OPPO
PRODUCT_DEVICE := PBCM10
PRODUCT_MANUFACTURER := OPPO
PRODUCT_NAME := omni_PBCM10
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
