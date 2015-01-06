# Set composition for USB
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Set read only default composition for USB
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.usb.default.config=mtp

# QC Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/system/lib/libqc-opt.so

# Common build properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.product_ship=true \
    rild.libpath=/system/lib/libsec-ril.so \
    rild.libargs=-d/dev/smd0 \
    telephony.lteOnGsmDevice=1 \
    ro.telephony.default_network=9 \
    wifi.interface=wlan0 \
    ro.chipname=MSM8930 \
    ro.config.ehrpd=true \
    ro.ril.hsxpa=1 \
    ro.ril.gprsclass=10 \
    persist.radio.add_power_save=1 \
    persist.radio.apm_sim_not_pwdn=1 \
    persist.radio.use_se_table_only=1 \
    persist.radio.fill_eons=1 \
    persist.radio.prefer_spn=0 \
    persist.data.netmgrd.qos.enable=false \
    ro.sf.lcd_density=240 \
    ro.ril.transmitpower=true \
    ro.warmboot.capability=1 \
    ro.qualcomm.cabl=0 \
    debug.composition.type=c2d \
    ro.opengles.version=196608 \
    mm.enable.qcom_parser=33395 \
    persist.audio.fluence.mode=endfire \
    persist.audio.vr.enable=false \
    persist.audio.handset.mic=digital \
    lpa.decode=true \
    persist.rild.nitz_plmn="" \
    persist.rild.nitz_long_ons_0="" \
    persist.rild.nitz_long_ons_1="" \
    persist.rild.nitz_long_ons_2="" \
    persist.rild.nitz_long_ons_3="" \
    persist.rild.nitz_short_ons_0="" \
    persist.rild.nitz_short_ons_1="" \
    persist.rild.nitz_short_ons_2="" \
    persist.rild.nitz_short_ons_3="" \
    ril.subscription.types=NV,RUIM \
    persist.gps.qmienabled=true \
    persist.gps.qc_nlp_in_use=1 \
    ro.qc.sdk.izat.premium_enabled=0 \
    ro.qc.sdk.izat.service_mask=0x0 \
    ro.gps.agps_provider=1 \
    persist.fuse_sdcard=true \
    ro.vold.umsdirtyratio=50 \
    ro.cwm.enable_key_repeat=true \
    persist.debug.wfd.enable=1 \
    persist.sys.wfd.virtual=0 \
    persist.timed.enable=true \
    persist.audio.lowlatency.rec=false \
    audio.gapless.playback.disable=true \
    qcom.hw.aac.encoder=true \
    ro.config.max_starting_bg=8 \
    camera2.portability.force_api=1 \
    mm.enable.smoothstreaming=true

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.ril_class=LoganreRIL

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.adb.secure=0 \
    ro.debuggable=1

# Enable Samsung EMS dial path
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.ril.config=samsungEMSReq

PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.locale.language=en \
    ro.product.locale.region=GB