# Release name
PRODUCT_RELEASE_NAME := land

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
    charger_res_images \
    charger \
    libcryptfs_hw

# Kernel
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel_land:kernel

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 3S
PRODUCT_DEVICE := land
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := omni_land
