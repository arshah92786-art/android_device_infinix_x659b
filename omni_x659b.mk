#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from Infinix-X659B device
$(call inherit-product, device/infinix/Infinix-X659B/device.mk)

PRODUCT_DEVICE := x659b
PRODUCT_NAME := omni_x659b
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X659B
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_x659b_h696-user 11 RP1A.200720.011 346473 release-keys"

BUILD_FINGERPRINT := Infinix/X659B-OP/Infinix-X659B:11/RP1A.200720.011/230606V241:user/release-keys
