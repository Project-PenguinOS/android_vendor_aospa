# Copyright (C) 2026 The PenguinOS Project
# SPDX-License-Identifier: Apache-2.0

ifeq (aospa_dodge,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from the dodge device.
$(call inherit-product, device/oneplus/dodge/device.mk)

# Inherit from the AOSPA configuration.
$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

PRODUCT_NAME := aospa_dodge
PRODUCT_DEVICE := dodge
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2653

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="qssi_64-user 17 CP2A.260605.016 1792513865065 release-keys" \
    BuildFingerprint=OnePlus/CPH2649IN/OP5D55L1:17/CP2A.260605.016/V.R4T3.53091cb-2c7fb6d-2c7fb73:user/release-keys \
    DeviceName=OP5D55L1 \
    DeviceProduct=CPH2653 \
    SystemDevice=OP5D55L1 \
    SystemName=CPH2653

# Boot animation resolution.
TARGET_BOOT_ANIMATION_RES := 1440

endif
