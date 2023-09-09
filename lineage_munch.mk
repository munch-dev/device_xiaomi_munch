#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from munch device
$(call inherit-product, device/xiaomi/munch/device.mk)

PRODUCT_DEVICE := munch
PRODUCT_NAME := lineage_munch
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 22021211RC
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="munch-user 13 RKQ1.211001.001 V14.0.3.0.TLMMIXM release-keys"

BUILD_FINGERPRINT := Redmi/munch/munch:13/RKQ1.211001.001/V14.0.3.0.TLMMIXM:user/release-keys
