#
# Copyright (C) 2023 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lavender device
$(call inherit-product, device/xiaomi/lavender/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Boot Animation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := lineage_lavender
PRODUCT_DEVICE := lavender
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lavender-user 10 QKQ1.190910.002 V12.5.3.0.QFGMIXM release-keys" \
    PRODUCT_NAME=lavender

BUILD_FINGERPRINT := xiaomi/lavender/lavender:10/QKQ1.190910.002/V12.5.3.0.QFGMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
