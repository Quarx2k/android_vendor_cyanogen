# Inherit AOSP device configuration.
$(call inherit-product, device/motorola/kobe/kobe.mk)

# Inherit common GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Extra jordan overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/kobe

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_kobe
PRODUCT_BRAND := MOTO
PRODUCT_DEVICE := kobe
PRODUCT_MODEL := MB520
PRODUCT_MANUFACTURER := Motorola
PRODUCT_SFX := KOB_FFW-4

# Release name and versioning
PRODUCT_RELEASE_NAME := Kobe
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

UTC_DATE := $(shell date +%s)
DATE     := $(shell date +%Y%m%d)

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_ID=GWK74 \
    PRODUCT_NAME=${PRODUCT_MODEL}_${PRODUCT_SFX} \
    TARGET_DEVICE=umts_kobe \
    BUILD_FINGERPRINT=MOTO/MB520_RTDACH/umts_kobe:2.3.4/4.5.1-134_DFP-74/1313117579:user/release-keys \
    PRIVATE_BUILD_DESC="umts_jordan_emara-user 2.3.4 4.5.1-134_DFP-74 1313117579 release-keys" \
    BUILD_NUMBER=${DATE} \
    BUILD_VERSION_TAGS=release-keys \
    TARGET_BUILD_TYPE=user

#
# Copy jordan specific prebuilt files
#
PRODUCT_COPY_FILES += \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip


