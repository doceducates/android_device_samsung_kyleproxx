$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product-if-exists, vendor/samsung/kyleproxx/kyleproxx-common-vendor.mk)

PRODUCT_LOCALES += hdpi
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

DEVICE_PACKAGE_OVERLAYS += device/samsung/kyleproxx/overlay

# Init files
PRODUCT_COPY_FILES += \
    device/samsung/kyleproxx/rootdir/fstab.hawaii_ss_kyleprods:root/fstab.hawaii_ss_kyleprods \
    device/samsung/kyleproxx/rootdir/init.hawaii_ss_kyleprods.rc:root/init.hawaii_ss_kyleprods.rc \
    device/samsung/kyleproxx/rootdir/init.bcm2166x.usb.rc:root/init.bcm2166x.usb.rc \
    device/samsung/kyleproxx/rootdir/init.log.rc:root/init.log.rc \
    device/samsung/kyleproxx/rootdir/libstlport.so:system/lib/libstlport.so \
    device/samsung/kyleproxx/rootdir/ueventd.hawaii_ss_kyleprods.rc:root/ueventd.hawaii_ss_kyleprods.rc 

# Google's Software Decoder.
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video_le.xml

# Configs
PRODUCT_COPY_FILES += \
    device/samsung/kyleproxx/configs/media_codecs.xml:system/etc/media_codecs.xml

# Insecure ADB
#ADDITIONAL_DEFAULT_PROPERTIES += \
#    ro.secure=0 \
#    ro.adb.secure=0 \

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    setup_fs \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs

# GPS/RIL
PRODUCT_PACKAGES += \
    libstlport \
    libglgps-compat

# USB accessory
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Misc other modules
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    audio.primary.default \
    libaudio-resampler \
    lights.hawaii \
    power.hawaii \
    libstagefrighthw \
    healthd.hawaii \
    webview

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.legacyencoder=true \
    media.stagefright.less-secure=true

# IPv6 tethering
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes

# Gello Browser
PRODUCT_PACKAGES += \
    Gello

# Recorder
PRODUCT_PACKAGES += \
    Recorder

# Widevine
PRODUCT_PACKAGES += \
    libshim_wvm
	
# Missing Symbols
PRODUCT_PACKAGES += \
    libsamsung_symbols \
	libatomicshim \
	libcamerashim

# KSM
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ksm.default=1

# Disable sending usage data
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.nocheckin=1

# Wi-Fi
PRODUCT_PACKAGES += \
    macloader \
    wifiloader \
    hostapd \
    libnetcmdiface \
    wpa_supplicant \
    wpa_supplicant.conf \
    android.hardware.wifi@1.0-service \
    wificond

# Camera
PRODUCT_PACKAGES += \
    Snap \
    libstlport \
    android.hardware.camera.provider@2.4-impl.legacy \
    camera.device@1.0-impl.legacy \
    libion
    
# HIDL
PRODUCT_COPY_FILES += \
    device/samsung/kyleproxx/manifest.xml:system/vendor/manifest.xml

# HIDL
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.power@1.0-impl \
    android.hardware.light@2.0-impl \
    android.hardware.bluetooth@1.0-impl \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service \
    android.hardware.renderscript@1.0-impl 

# Seccomp policy
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp_policy/mediacodec.policy:system/vendor/etc/seccomp_policy/mediacodec.policy   

# Bluetooth
PRODUCT_PACKAGES += \
    libbt-vendor

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# These are the hardware-specific settings that are stored in system properties.
# Note that the only such settings should be the ones that are too low-level to
# be reachable from resources or other mechanisms
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    mobiledata.interfaces=rmnet0 \
    ro.telephony.ril_class=SamsungBCMRIL \
    persist.radio.multisim.config=none \
    ro.multisim.simslotcount=1 \
    ro.telephony.call_ring.multiple=0 \
    camera2.portability.force_api=1 \
    ro.sys.sdcardfs=true \
    ro.telephony.call_ring=0

# Enable Google-specific location features,
# like NetworkLocationProvider and LocationCollector
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1

# Extended JNI checks:
# The extended JNI checks will cause the system to run more slowly, but they can spot a variety of nasty bugs
# before they have a chance to cause problems.
# Default=true for development builds, set by android buildsystem
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0 \
    ro.kernel.checkjni=0 \
    dalvik.vm.checkjni=false

# Dex2Oat multi-thread
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.fw.dex2oat_thread_count=2

# Low-RAM configs
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.fw.bg_apps_limit=12 \
    config.disable_atlas=true

# Dalvik heap config
include frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk

$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/config/config-bcm.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_kyleproxx
PRODUCT_DEVICE := kyleproxx
PRODUCT_MODEL := GT-S758x
