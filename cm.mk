# Release name
PRODUCT_RELEASE_NAME := jewel

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/jewel/device_jewel.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := jewel
PRODUCT_NAME := cm_jewel
PRODUCT_BRAND := htc
PRODUCT_MODEL := jewel
PRODUCT_MANUFACTURER := htc
