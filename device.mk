#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from msm8937-common
$(call inherit-product, device/motorola/msm8937-common/msm8937.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/motorola/jeter/jeter-vendor.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1440
TARGET_SCREEN_WIDTH := 720

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Properties
-include $(LOCAL_PATH)/vendor_prop.mk

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/audio_platform_info_aljeter.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_aljeter.xml \
    $(LOCAL_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(LOCAL_PATH)/audio/mixer_paths_aljeter.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_aljeter.xml

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/uinput-egis.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/uinput-egis.kl

# IDC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/uinput-egis.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/uinput-egis.idc

# NFC
PRODUCT_PACKAGES += \
    libnfc \
    com.android.nfc_extras \
    NfcNci \
    nqnfcee_access.xml \
    nqnfcse_access.xml \
    SecureElement \
    Tag \
    com.android.nfc_extras \
    android.hardware.nfc@1.2-service

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nfc/libnfc-nci.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nci.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-nxp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp.conf

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_n/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_n/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.hcef.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_n/android.hardware.nfc.hcef.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_n/com.android.nfc_extras.xml

# Ramdisk
PRODUCT_PACKAGES += \
    init.device.rc \
    init.qcom.sensors.sh

# Releasetools script
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/check_device.sh:install/bin/check_device.sh

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf \
    $(LOCAL_PATH)/configs/sensors/sensor_def_qcomdev.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/sensor_def_qcomdev.conf \
    $(LOCAL_PATH)/configs/sensors/sensor_def_qcomdev_aljeter.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/sensor_def_qcomdev_aljeter.conf

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine.conf \
    $(LOCAL_PATH)/configs/thermal-engine-aljeter.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-aljeter.conf
