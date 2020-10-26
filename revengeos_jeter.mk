#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/motorola/jeter/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Revenge stuff.
$(call inherit-product, vendor/revengeos/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := revengeos_jeter
PRODUCT_DEVICE := jeter
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g(6) play
PRODUCT_MANUFACTURER := motorola

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += \
    ro.product.model \
    ro.product.name

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="jeter-user 9 PPPS29.118-57-5 d3be1 release-keys" \
    PRODUCT_NAME="jeter"

BUILD_FINGERPRINT := motorola/jeter/jeter:9/PPPS29.118-57-5/d3be1:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-motorola

TARGET_BOOT_ANIMATION_RES := 720
