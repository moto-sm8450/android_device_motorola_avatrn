#
# SPDX-FileCopyrightText: The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from avatrn device
$(call inherit-product, device/motorola/avatrn/device.mk)

# Inherit some common stuff
$(call inherit-product, vendor/calyx/config/common_phone.mk)

PRODUCT_NAME := calyx_avatrn
PRODUCT_DEVICE := avatrn
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 2024

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceProduct="avatrn_g" \
    BuildDesc="avatrn_g-user 16 W1UAN36H.29-25 a3ee7a-ab45e7 release-keys" \
    BuildFingerprint="motorola/avatrn_g/avatrn:16/W1UAN36H.29-25/a3ee7a-ab45e7:user/release-keys"
