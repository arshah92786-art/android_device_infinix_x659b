#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/infinix/x659b
# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service

PRODUCT_PACKAGES += \
    bootctrl.mt6768

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# User Interface
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/system/etc/twrp.flags:recovery/root/system/etc/twrp.flags

# Touch and Graphics (MediaTek specific)
PRODUCT_PACKAGES += \
    libGLESv2 \
    libEGL \
    libGLESv1_CM

# TWRP Hardware-specific
PRODUCT_SET_DEBUGFS_RESTRICTIONS := false

# Inherit from omni_twres (This ensures TWRP resources are included)
$(call inherit-product, vendor/twrp/config/common.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
