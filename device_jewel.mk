$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/htc/jewel/jewel-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/jewel/overlay

LOCAL_PATH := device/htc/jewel
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernAl
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
    device/htc/jewel/recovery/sbin/choice_fn:recovery/root/sbin/choice_fn \
    device/htc/jewel/recovery/sbin/detect_key:recovery/root/sbin/detect_key \
    device/htc/jewel/recovery/sbin/offmode_charging:recovery/root/sbin/offmode_charging \
    device/htc/jewel/recovery/sbin/power_test:recovery/root/sbin/power_test \
    device/htc/jewel/recovery/sbin/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh

#$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := htc_jewel
PRODUCT_BRAND := HTC