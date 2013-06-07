

$(call inherit-product, vendor/aosp/config/common_full_phone.mk)


$(call inherit-product, vendor/aosp/config/gsm.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from m7tmo device
$(call inherit-product, device/htc/m7/device_m7.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m7 BUILD_ID=JZO54K BUILD_FINGERPRINT="tmous/m7/m7:4.1.2/JZO54K/170484.7:user/release-keys" PRIVATE_BUILD_DESC="1.27.531.7 CL170484 release-keys"

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := vanilla_m7
PRODUCT_DEVICE := m7
PRODUCT_BRAND := htc
PRODUCT_MANUFACTURER := htc
PRODUCT_MODEL := One



# 720p overlay
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/aosp/overlay/720p

# Hot reboot
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/aosp/overlay/hot_reboot




