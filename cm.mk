# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

$(call inherit-product, device/samsung/loganreltexx/full_loganreltexx.mk)

PRODUCT_DEVICE := loganreltexx
PRODUCT_NAME := cm_loganreltexx
