# Android Open Source Project Common Stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# AAPT
PRODUCT_AAPT_CONFIG := xhdpi hdpi normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Audio
PRODUCT_PACKAGES += \
     	audio.a2dp.default \
     	audio_policy.stub \
     	audio.primary.default \
     	audio.r_submix.default \
     	audio.usb.default \
     	libaudioutils \
     	libtinyalsa \
     	tinycap \
     	tinymix \
     	tinypcminfo \
     	tinyplay \

PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir/system/etc/audio,system/etc/audio) \
	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir/system/etc/srs,system/etc/srs) \
	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir/system/etc/sws,system/etc/sws) \
	$(LOCAL_PATH)/rootdir/system/etc/audio_effects.conf:system/etc/audio_effects.conf \
	$(LOCAL_PATH)/rootdir/system/etc/audio_policy.conf:system/etc/audio_policy.conf \

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/system/etc/hisi_omx.cfg:system/etc/hisi_omx.cfg \
	$(LOCAL_PATH)/rootdir/system/etc/media_codecs.xml:system/etc/media_codecs.xml \
	$(LOCAL_PATH)/rootdir/system/etc/media_codecs_ffmpeg.xml:system/etc/media_codecs_ffmpeg.xml\
	$(LOCAL_PATH)/rootdir/system/etc/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
	$(LOCAL_PATH)/rootdir/system/etc/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
	$(LOCAL_PATH)/rootdir/system/etc/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
	$(LOCAL_PATH)/rootdir/system/etc/media_profiles.xml:system/etc/media_profiles.xml \

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/system/lib/hw/audio.primary.hi6210sft.so:system/lib/hw/audio.primary.hi6210sft.so \
	$(LOCAL_PATH)/rootdir/system/lib/hw/audio.r_submix.default.so:system/lib/hw/audio.r_submix.default.so \
	$(LOCAL_PATH)/rootdir/system/lib/hw/hw_af_extend.default.so:system/lib/hw/hw_af_extend.default.so \
	$(LOCAL_PATH)/rootdir/system/lib/libaudioalgoservice_jni.so:system/lib/libaudioalgoservice_jni.so \
	$(LOCAL_PATH)/rootdir/system/lib/libaudio_custom.so:system/lib/libaudio_custom.so \
	$(LOCAL_PATH)/rootdir/system/lib/libaudioflinger.huawei.so:system/lib/libaudioflinger.hauwei.so \
	$(LOCAL_PATH)/rootdir/system/lib/libaudioroute.so:system/lib/libaudioroute.so \
	$(LOCAL_PATH)/rootdir/system/lib/libbalong_audio_ril.so:system/lib/libbalong_audio_ril.so \
	$(LOCAL_PATH)/rootdir/system/lib/libearpa.so:system/lib/libearpa.so \
	$(LOCAL_PATH)/rootdir/system/lib/libmax98925.so:system/lib/libmax98925.so \
	$(LOCAL_PATH)/rootdir/system/lib/libnvme.so:system/lib/libnvme.so \
	$(LOCAL_PATH)/rootdir/system/lib/libOpenMAXAL.so:system/lib/libOpenMAXAL.so \
	$(LOCAL_PATH)/rootdir/system/lib/libOpenSLES.so:system/lib/libOpenSLES.so \
	$(LOCAL_PATH)/rootdir/system/lib/libsoundtrigger.so:system/lib/libsoundtrigger.so \
	$(LOCAL_PATH)/rootdir/system/lib/libsoundtriggerservice.so:system/lib/libsoundtriggerservice.so \
	$(LOCAL_PATH)/rootdir/system/lib/libsrsprocessing.so:system/lib/libsrsprocessing.so \
	$(LOCAL_PATH)/rootdir/system/lib/libswsprocessing.so:system/lib/libswsprocessing.so \
	$(LOCAL_PATH)/rootdir/system/lib/libtfa9895.so:system/lib/libtfa9895.so \

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/system/lib64/hw/audio.primary.hi6210sft.so:system/lib64/hw/audio.primary.hi6210sft.so \
	$(LOCAL_PATH)/rootdir/system/lib64/hw/audio.r_submix.default.so:system/lib64/hw/audio.r_submix.default.so \
	$(LOCAL_PATH)/rootdir/system/lib64/libbalong_audio_ril.so:system/lib64/libbalong_audio_ril.so \
	$(LOCAL_PATH)/rootdir/system/lib64/libearpa.so:system/lib64/libearpa.so \
	$(LOCAL_PATH)/rootdir/system/lib64/libmax98925.so:system/lib64/libmax98925.so \
	$(LOCAL_PATH)/rootdir/system/lib64/libnvme.so:system/lib64/libnvme.so \
	$(LOCAL_PATH)/rootdir/system/lib64/libOpenMAXAL.so:system/lib64/libOpenMAXAL.so \
	$(LOCAL_PATH)/rootdir/system/lib64/libOpenSLES.so:system/lib64/libOpenSLES.so \
	$(LOCAL_PATH)/rootdir/system/lib64/libsoundtrigger.so:system/lib64/libsoundtrigger.so \
	$(LOCAL_PATH)/rootdir/system/lib64/libsoundtriggerservice.so:system/lib64/libsoundtriggerservice.so \
	$(LOCAL_PATH)/rootdir/system/lib64/libswsprocessing.so:system/lib64/libswsprocessing.so \
	$(LOCAL_PATH)/rootdir/system/lib64/libtfa9895.so:system/lib64/libtfa9895.so \

# Binaries
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir/system/bin,system/bin) \

# Bluetooth
PRODUCT_PACKAGES += \
    	bt_vendor.conf \
    	libbt-vendor \

PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir/system/etc/bluetooth,system/etc/bluetooth) \

# Camera
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/system/etc/camera_orientation.cfg:system/etc/camera_orientation.cfg \
	$(LOCAL_PATH)/rootdir/system/etc/camera_resolutions.cfg:system/etc/etc/camera_resolutions.cfg

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/system/lib/hw/camera.hi6210sft.so:system/lib/hw/camera.hi6210sft.so \
	$(LOCAL_PATH)/rootdir/system/lib/libcamera_core.so:system/lib/libcamera_core.so \
	$(LOCAL_PATH)/rootdir/system/lib/libCameraHwExtend.so:system/lib/libCameraHwExtend.so \
	$(LOCAL_PATH)/rootdir/system/lib/libjpegenchw.so:system/lib/libjpegenchw.so \
	$(LOCAL_PATH)/rootdir/system/lib/libjpu.so:system/lib/libjpu.so \

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/system/lib64/hw/camera.hi6210sft.so:system/lib64/hw/camera.hi6210sft.so \

# Dalvik
PRODUCT_TAGS += dalvik.gc.type-precise
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# Display
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# File System
PRODUCT_PACKAGES += \
    	make_ext4fs \
    	setup_fs

# Firmware
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir/system/vendor/firmware,system/vendor/firmware) \

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/system/lib/libbt_factory_test.so:system/lib/libbt_factory_test.so \
	$(LOCAL_PATH)/rootdir/system/lib/libbt_factory_test_hi110x.so:system/lib/libbt_factory_test_hi110x.so \

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/system/lib64/libbt_factory_test.so:system/lib64/libbt_factory_test.so \
	$(LOCAL_PATH)/rootdir/system/lib64/libbt_factory_test_hi110x.so:system/lib64/libbt_factory_test_hi110x.so \

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/system/vendor/lib/libbt-vendor.so:system/vendor/lib/libbt-vendor.so \
	$(LOCAL_PATH)/rootdir/system/vendor/lib/libbt-vendor-hi110x.so:system/vendor/lib/libbt-vendor-hi110x.so \

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/system/vendor/lib64/libbt-vendor-hi110x.so:system/vendor/lib64/libbt-vendor-hi110x.so \

# GPS
$(call inherit-product, device/common/gps/gps_us_supl.mk)

PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir/system/etc/gnss,system/etc/gnss) \
	$(LOCAL_PATH)/rootdir/system/etc/gps.conf:system/etc/gps.conf \
	$(LOCAL_PATH)/rootdir/system/etc/gpsconfig.xml:system/etc/gpsconfig.xml \
	$(LOCAL_PATH)/rootdir/system/etc/gpsconfig_beta.xml:system/etc/gpsconfig_beta.xml \
	$(LOCAL_PATH)/rootdir/system/etc/hisi_cfg.ini:system/etc/hisi_cfg.ini \
	$(LOCAL_PATH)/rootdir/system/etc/hisi_cfg_alice.ini:system/etc/hisi_cfg_alice.ini \
	$(LOCAL_PATH)/rootdir/system/etc/hisi_cfg_cherry.ini:system/etc/hisi_cfg_cherry.ini \

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/system/lib/hw/gps.hi110x.default.so:system/lib/hw/gps.hi110x.default.so \
	$(LOCAL_PATH)/rootdir/system/lib/libgps_factory_test.so:system/lib/libgps_factory_test.so \
	$(LOCAL_PATH)/rootdir/system/lib/libgps_factory_test_hi110x.so:system/lib/libgps_factory_test_hi110x.so \

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/system/lib64/hw/libgps_factory_test.so:system/lib64/hw/libgps_factory_test.so \
	$(LOCAL_PATH)/rootdir/system/lib64/hw/libgps_factory_test_hi110x.so:system/lib64/hw/libgps_factory_test_hi110x.so \
	$(LOCAL_PATH)/rootdir/system/lib64/libgps_factory_test.so:system/lib64/libgps_factory_test.so \
	$(LOCAL_PATH)/rootdir/system/lib64/libgps_factory_test_hi110x.so:system/lib64/libgps_factory_test_hi110x.so \

# Graphics
PRODUCT_PACKAGES += \
	iontest \
	ion-unit-tests \
	libGLES_android \
	libion.huawei \
	libion

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/system/lib/egl/libGLES_android.so:system/lib/egl/libGLES_android.so \
	$(LOCAL_PATH)/rootdir/system/lib/egl/libGLES_mali.so:system/lib/egl/libGLES_mali.so \
	$(LOCAL_PATH)/rootdir/system/lib/hw/gralloc.hi6210sft.so:system/lib/hw/gralloc.hi6210sft.so \
	$(LOCAL_PATH)/rootdir/system/lib/libion.so:system/lib/libion.so \

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/system/lib64/egl/libGLES_android.so:system/lib64/egl/libGLES_android.so \
	$(LOCAL_PATH)/rootdir/system/lib64/egl/libGLES_mali.so:system/lib64/egl/libGLES_mali.so \
	$(LOCAL_PATH)/rootdir/system/lib64/hw/gralloc.hi6210sft.so:system/lib64/hw/gralloc.hi6210sft.so \
	$(LOCAL_PATH)/rootdir/system/lib64/libion.so:system/lib64/libion.so \

# Huawei P8 Lite Components
PRODUCT_PACKAGES += \
	libhi6210sft \
	lights.hi6210sft \
	sound_trigger.primary.hi6210sft \

# Kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/hisi/hi6210sft/Image
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    	$(LOCAL_KERNEL):kernel

# NFC
PRODUCT_PACKAGES += \
    	com.android.nfc_extras \
    	libnfc-nci \
    	libnfc_nci_jni \
    	nfc_nci.pn54x.default \
    	NfcNci \
    	Tag 

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/system/etc/libnfc-brcm-alice.conf:system/etc/libnfc-brcm.conf \
	$(LOCAL_PATH)/rootdir/system/etc/libnfc-nxp-alice.conf:system/etc/libnfc-nxp.conf \
	$(LOCAL_PATH)/rootdir/system/etc/nfcee_access.xml:system/etc/nfcee_access.xml \

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/system/lib64/hw/nfc_nci.pn54x.default.so:system/lib64/hw/nfc_nci.pn54x.default.so

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/system/vendor/firmware/bcm2079x_firmware.ncd:system/vendor/firmware/bcm2079x_firmware.ncd \
	$(LOCAL_PATH)/rootdir/system/vendor/firmware/bcm2079x_pre_firmware.ncd:system/vendor/firmware/bcm2079x_pre_firmware.ncd \

PRODUCT_COPY_FILES += \
    	frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    	frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    	frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Permissions
PRODUCT_COPY_FILES += \
    	frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    	frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    	frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    	frameworks/native/data/etc/android.hardware.camera.external.xml:system/etc/permissions/android.hardware.camera.external.xml \
    	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    	frameworks/native/data/etc/android.hardware.camera.manual_postprocessing.xml:system/etc/permissions/android.hardware.camera.manual_postprocessing.xml \
    	frameworks/native/data/etc/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml \
    	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    	frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml \
    	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    	frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    	frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    	frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    	frameworks/native/data/etc/android.software.app_widgets.xml:system/etc/permissions/android.software.app_widgets.xml \
    	frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Ramdisk
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/sbin/oeminfo_nvm_server:root/sbin/oeminfo_nvm_server \
	$(LOCAL_PATH)/rootdir/sbin/teecd:root/sbin/teecd \
	$(LOCAL_PATH)/rootdir/sbin/volisnotd:root/sbin/volisnotd \

# RIL
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir/system/etc/log,system/etc/log) \
	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir/system/etc/manufacture,system/etc/manufacture) \
	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir/system/etc/modemConfig,system/etc/modemConfig) \
	$(LOCAL_PATH)/rootdir/system/etc/factory_modem.cfg:system/etc/factory_modem.cfg \
	$(LOCAL_PATH)/rootdir/system/etc/kerneldump.sh:system/etc/etc/kerneldump.sh

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/system/lib/libbalong-ril.so:system/lib/libbalong-ril.so \
	$(LOCAL_PATH)/rootdir/system/lib/libbalong-ril-1.so:system/lib/libbalong-ril-1.so \

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/system/lib64/lib_atprotocolsw.so:system/lib64/lib_atprotocolsw.so \
	$(LOCAL_PATH)/rootdir/system/lib64/libbalong-ril.so:system/lib64/libbalong-ril.so \
	$(LOCAL_PATH)/rootdir/system/lib64/libbalong-ril-1.so:system/lib64/libbalong-ril-1.so \
	$(LOCAL_PATH)/rootdir/system/lib64/libconn_factory_test.so:system/lib64/libconn_factory_test.so \
	$(LOCAL_PATH)/rootdir/system/lib64/libhisi_efuse.so:system/lib64/libhisi_efuse.so \
	$(LOCAL_PATH)/rootdir/system/lib64/libHisiEncClientDll.so:system/lib64/libHisiEncClientDll.so \
	$(LOCAL_PATH)/rootdir/system/lib64/libHiSiUEAgent.so:system/lib64/libHiSiUEAgent.so \
	$(LOCAL_PATH)/rootdir/system/lib64/libhsa_common.so:system/lib64/libhsa_common.so \
	$(LOCAL_PATH)/rootdir/system/lib64/libhsa_configprocess.so:system/lib64/libhsa_configprocess.so \
	$(LOCAL_PATH)/rootdir/system/lib64/libhsa_hdlc.so:system/lib64/libhsa_hdlc.so \
	$(LOCAL_PATH)/rootdir/system/lib64/libhsa_msgprocess.so:system/lib64/libhsa_msgprocess.so \
	$(LOCAL_PATH)/rootdir/system/lib64/liboeminfo.so:system/lib64/liboeminfo.so \
	$(LOCAL_PATH)/rootdir/system/lib64/libreference-ril.so:system/lib64/libreference-ril.so \
	$(LOCAL_PATH)/rootdir/system/lib64/libril.so:system/lib64/libril.so \
	$(LOCAL_PATH)/rootdir/system/lib64/librilutils.so:system/lib64/librilutils.so \

# Sensors
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/system/lib/hw/sensorcaps.default.so:system/lib/hw/sensorcaps.default.so \
	$(LOCAL_PATH)/rootdir/system/lib/hw/sensors.default.so:system/lib/hw/sensors.default.so \

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/system/lib64/hw/lights.default.so:system/lib64/hw/lights.hi6210sft.so \
	$(LOCAL_PATH)/rootdir/system/lib64/hw/sensorcaps.default.so:system/lib64/hw/sensorcaps.default.so \
	$(LOCAL_PATH)/rootdir/system/lib64/hw/sensors.default.so:system/lib64/hw/sensors.default.so \

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/system/vendor/lib/libcalmodule_akm.so:system/vendor/lib/libcalmodule_akm.so \

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/system/vendor/lib64/libcalmodule_akm.so:system/vendor/lib64/libcalmodule_akm.so \

# Wifi
PRODUCT_PACKAGES += \
     	libwpa_client \
     	wpa_supplicant \
     	wpa_supplicant-conf \

PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir/system/etc/wifi,system/etc/wifi) \

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/system/lib/libchrlog.so:system/lib/libchrlog.so \
	$(LOCAL_PATH)/rootdir/system/lib/libhisi_ini.so:system/lib/libhisi_ini.so \
	$(LOCAL_PATH)/rootdir/system/lib/libwifi_factory_test.so:system/lib/libwifi_factory_test.so \
	$(LOCAL_PATH)/rootdir/system/lib/libwifi_factory_test_hi110x.so:system/lib/libwifi_factory_test_hi110x.so \
	$(LOCAL_PATH)/rootdir/system/lib/libwifipro.so:system/lib/libwifipro.so \
	$(LOCAL_PATH)/rootdir/system/lib/libwpa_client_hisi.so:system/lib/libwpa_client_hisi.so \

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/system/lib64/libchrlog.so:system/lib64/libchrlog.so \
	$(LOCAL_PATH)/rootdir/system/lib64/libhisi_ini.so:system/lib64/libhisi_ini.so \
	$(LOCAL_PATH)/rootdir/system/lib64/libwifi_factory_test.so:system/lib64/libwifi_factory_test.so \
	$(LOCAL_PATH)/rootdir/system/lib64/libwifi_factory_test_hi110x.so:system/lib64/libwifi_factory_test_hi110x.so \
	$(LOCAL_PATH)/rootdir/system/lib64/libwifipro.so:system/lib64/libwifipro.so \
	$(LOCAL_PATH)/rootdir/system/lib64/libwpa_client_hisi.so:system/lib64/libwpa_client_hisi.so \

# Zygote
ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.zygote=zygote64_32
