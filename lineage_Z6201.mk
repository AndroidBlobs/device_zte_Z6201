# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from Z6201 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := zte
PRODUCT_DEVICE := Z6201
PRODUCT_MANUFACTURER := zte
PRODUCT_NAME := lineage_Z6201
PRODUCT_MODEL := Z6201V

PRODUCT_GMS_CLIENTID_BASE := android-zte
TARGET_VENDOR := zte
TARGET_VENDOR_PRODUCT_NAME := Z6201
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="full_k61v1_32_bsp_hdp-user 9 PPR1.180610.011 149 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := ZTE/VSBL_Z6201V/Z6201:9/PPR1.180610.011/20190924.114728:user/release-keys
