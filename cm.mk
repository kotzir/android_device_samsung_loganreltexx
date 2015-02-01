# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

$(call inherit-product, device/samsung/loganreltexx/full_loganreltexx.mk)

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=loganreltexx TARGET_DEVICE=loganrelte BUILD_FINGERPRINT="samsung/loganreltexx/loganrelte:4.2.2/JDQ39/S7275RXXUANG1:user/release-keys" PRIVATE_BUILD_DESC="loganreltexx-user 4.2.2 JDQ39 S7275RXXUANG1 release-keys"

PRODUCT_DEVICE := loganreltexx
PRODUCT_NAME := cm_loganreltexx
