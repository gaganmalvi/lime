# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from pomelo device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := qualcomm
PRODUCT_DEVICE := pomelo
PRODUCT_MANUFACTURER := qualcomm
PRODUCT_NAME := lineage_pomelo
PRODUCT_MODEL := pomelo

PRODUCT_GMS_CLIENTID_BASE := android-qualcomm
TARGET_VENDOR := qualcomm
TARGET_VENDOR_PRODUCT_NAME := pomelo
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="qssi-user 11 RKQ1.201004.002 21.3.10 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Redmi/lime_global/lime:10/QKQ1.200830.002/V12.0.4.0.QJQMIXM:user/release-keys
