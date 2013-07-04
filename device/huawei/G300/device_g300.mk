
$(call inherit-product, device/common/gps/gps_eu_supl.mk)


ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/huawei/G300/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif
PRODUCT_COPY_FILES += \
$(LOCAL_KERNEL):kernel \

PRODUCT_NAME := cm_G300
PRODUCT_DEVICE := G300
PRODUCT_MANUFACTURER := HUAWEI
PRODUCT_BRAND := Ascend
PRODUCT_MODEL := G300
PRODUCT_BOARD := U8815
DEVICE_PACKAGE_OVERLAYS := device/huawei/G300/overlay
PRODUCT_TAGS += dalvik.gc.type-precise
PRODUCT_PROPERTY_OVERRIDES+= dalvik.vm.execution-mode=int:jit \
	ro.telephony.call_ring.multiple=false \
	ro.telephony.call_ring.delay=5000 \
	dalvik.vm.dexopt-flags=m=y \
	ro.com.google.locationfeatures=1 \



PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi



PRODUCT_PACKAGES += audio.primary.msm7x27a
PRODUCT_PACKAGES += audio_policy.msm7x27a
PRODUCT_PACKAGES += audio_policy.conf
PRODUCT_PACKAGES += copybit.msm7x27a
PRODUCT_PACKAGES += gralloc.msm7x27a
#PRODUCT_PACKAGES += lights.msm7x27a
PRODUCT_PACKAGES += hwcomposer.msm7x27a
PRODUCT_PACKAGES += libmemalloc
PRODUCT_PACKAGES += libstagefrighthw

PRODUCT_PACKAGES += gps.default

PRODUCT_PACKAGES += Torch
#PRODUCT_PACKAGES += FM

#MM_CORE
PRODUCT_PACKAGES += libmm-omxcore
PRODUCT_PACKAGES += libOmxCore
PRODUCT_PACKAGES += libOmxAacEnc
PRODUCT_PACKAGES += libOmxAmrEnc
PRODUCT_PACKAGES += libOmxEvrcEnc
PRODUCT_PACKAGES += libOmxQcelp13Enc

#MM_VIDEO
PRODUCT_PACKAGES += ast-mm-vdec-omx-test
PRODUCT_PACKAGES += libdivxdrmdecrypt
PRODUCT_PACKAGES += liblasic
PRODUCT_PACKAGES += libOmxVdec
PRODUCT_PACKAGES += libOmxVenc
PRODUCT_PACKAGES += libOpenMAXAL
PRODUCT_PACKAGES += libOpenSLES
PRODUCT_PACKAGES += libOmxVidEnc
PRODUCT_PACKAGES += mm-vdec-omx-property-mgr
PRODUCT_PACKAGES += mm-vdec-omx-test
PRODUCT_PACKAGES += mm-venc-omx-test
PRODUCT_PACKAGES += mm-venc-omx-test720p
PRODUCT_PACKAGES += mm-video-driver-test
PRODUCT_PACKAGES += mm-video-encdrv-test


PRODUCT_PACKAGES += libv8

# FM
#PRODUCT_PACKAGES += FmRadioReceiver \



PRODUCT_PACKAGES += \
    AccountAndSyncSettings \
    DeskClock \
    AlarmProvider \
    Bluetooth \
	busybox \
	applypatch \
    Calculator \
    Camera \
    Calendar \
    CertInstaller \
    DrmProvider \
    Email \
	CMFileManager \
    Gallery2 \
    LatinIME \
    Launcher2 \
    Mms \
    Music \
	MusicFX \
    Phone \
    Provision \
    Protips \
    QuickSearchBox \
	hcitool \
	brcm_patchram_plus \
    Settings \
	Stk \
	SpareParts \
    Sync \
    SystemUI \
    Updater \
    CalendarProvider \
    SyncProvider \
    IM \
    VoiceDialer \
    hciconfig \
	hciattach \
	CMParts \
    CMScreenshot \
    CMStats \
	libwpa_client \
	hostapd \
	hostapd_cli \
	Superuser \
	audio.a2dp.default \
	audio.usb.default \
    VideoEditor \
	rild \
	libril \
	libreference-ril \

# Live Wallpapers
PRODUCT_PACKAGES += \
        librs_jni \
		CMWallpapers \
        LiveWallpapers \
        VisualizationWallpapers \
        LiveWallpapersPicker \

#Theme package
PRODUCT_PACKAGES += \
	ThemeManager \
	ThemeChooser \
	com.tmobile.themes \
	Androidian \
	Cyanbread
		
# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
	com.android.future.usb.accessory \
    setup_fs

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	device/huawei/G300/proprietary/etc/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \

#recovery root dir
PRODUCT_COPY_FILES += \
	device/huawei/G300/proprietary/root/sbin/resize2fs_s:recovery/root/sbin/resize2fs_s \
	device/huawei/G300/proprietary/root/ueventd.rc:recovery/root/ueventd.rc \
	device/huawei/G300/init.rc:recovery/root/init.rc \
	device/huawei/G300/proprietary/root/init:recovery/root/init \
	device/huawei/G300/proprietary/root/sbin/e2fsck_s:recovery/root/sbin/e2fsck_s \
	device/huawei/G300/proprietary/root/sbin/charge:recovery/root/sbin/charge \
	device/huawei/G300/proprietary/root/sbin/hw_scsi_switch:recovery/root/sbin/hw_scsi_switch \


	
#root dir
PRODUCT_COPY_FILES += \
	device/huawei/G300/proprietary/root/sbin/resize2fs_s:root/sbin/resize2fs_s \
	device/huawei/G300/proprietary/root/init.rc:root/init.rc \
	device/huawei/G300/proprietary/root/ueventd.rc:root/ueventd.rc \
	device/huawei/G300/proprietary/root/sbin/e2fsck_s:root/sbin/e2fsck_s \
	device/huawei/G300/proprietary/root/init.usb.rc:root/init.qcom.usb.rc \

# VOLD files
PRODUCT_COPY_FILES += \
	device/huawei/G300/proprietary/etc/vold.fstab:system/etc/vold.fstab \
	device/huawei/G300/recovery.fstab:recovery/root/etc/recovery.fstab \
	device/huawei/G300/proprietary/bin/hw_scsi_switch:system/bin/hw_scsi_switch \
	


#adreno200 	
PRODUCT_COPY_FILES += \
    device/huawei/G300/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
	device/huawei/G300/proprietary/lib/egl/libGLES_android.so:system/lib/egl/libGLES_android.so \
    device/huawei/G300/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    device/huawei/G300/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    device/huawei/G300/proprietary/lib/egl/libGLESv2S3D_adreno200.so:system/lib/egl/libGLESv2S3D_adreno200.so \
    device/huawei/G300/proprietary/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
	device/huawei/G300/proprietary/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
	device/huawei/G300/proprietary/lib/egl/egl.cfg:system/lib/egl/egl.cfg \
	device/huawei/G300/proprietary/lib/libgsl.so:system/lib/libgsl.so \
	device/huawei/G300/proprietary/lib/libC2D2.so:system/lib/libC2D2.so \
	device/huawei/G300/proprietary/lib/libc2d2_z180.so:system/lib/libc2d2_z180.so \
	device/huawei/G300/proprietary/lib/libOpenVG.so:system/lib/libOpenVG.so \
	device/huawei/G300/proprietary/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so \

#firmware 	
PRODUCT_COPY_FILES += \
	device/huawei/G300/proprietary/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
	device/huawei/G300/proprietary/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \

#MM configs	
PRODUCT_COPY_FILES += \
	device/huawei/G300/proprietary/etc/media_profiles.xml:system/etc/media_profiles.xml \
	device/huawei/G300/proprietary/etc/AudioFilter_MSM7227A_U8815.csv:system/etc/AudioFilter.csv \
	device/huawei/G300/proprietary/etc/media_codecs.xml:system/etc/media_codecs.xml \
	device/huawei/G300/proprietary/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \

#Audio	
PRODUCT_COPY_FILES += \
	device/huawei/G300/proprietary/lib/libaudioalsa.so:system/lib/libaudioalsa.so \
	device/huawei/G300/proprietary/lib/libaudioalsa.so:obj/lib/libaudioalsa.so \
	device/huawei/G300/proprietary/lib/liballjoyn.so:system/lib/liballjoyn.so \
	device/huawei/G300/proprietary/lib/libaudioeq.so:system/lib/libaudioeq.so \

	

#Wifi	
PRODUCT_COPY_FILES += \
	device/huawei/G300/proprietary/wifi/nvram_4330.txt:system/wifi/nvram_4330.txt \
	device/huawei/G300/proprietary/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
	device/huawei/G300/proprietary/wifi/fw_4330_b2.bin:system/wifi/fw_4330_b2.bin \
	device/huawei/G300/proprietary/wifi/fw_4330_b2.bin:system/wifi/fw_4330_b2_apsta.bin \
	device/huawei/G300/proprietary/wifi/fw_4330_b2.bin:system/wifi/fw_4330_b2_p2p.bin \
	device/huawei/G300/proprietary/etc/wifi/p2p_supplicant.conf:system/etc/wifi/p2p_supplicant.conf \
	device/huawei/G300/proprietary/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \

	
	
#$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4330/device-bcm.mk)

	
#Sensors & others	
PRODUCT_COPY_FILES += \
	device/huawei/G300/proprietary/lib/hw/lights.msm7x27a.so:system/lib/hw/lights.msm7x27a.so \
	device/huawei/G300/proprietary/lib/hw/lights.msm7x27a.so:obj/lib/hw/lights.msm7x27a.so \
	device/huawei/G300/proprietary/lib/hw/nfc.huawei.so:system/lib/hw/nfc.huawei.so \
	device/huawei/G300/proprietary/lib/hw/sensors.default.so:system/lib/hw/sensors.default.so \
	device/huawei/G300/proprietary/lib/liboeminfo.so:system/lib/liboeminfo.so \
    device/huawei/G300/proprietary/lib/liboeminfodata.so:system/lib/liboeminfodata.so \
    device/huawei/G300/proprietary/lib/liboem_rapi.so:system/lib/liboem_rapi.so \
    device/huawei/G300/proprietary/lib/libqc-opt.so:system/lib/libqc-opt.so \
    device/huawei/G300/proprietary/lib/libxml.so:system/lib/libxml.so \
    device/huawei/G300/proprietary/lib/libdnshostprio.so:system/lib/libdnshostprio.so \
    device/huawei/G300/proprietary/lib/libtcpfinaggr.so:system/lib/libtcpfinaggr.so \
    device/huawei/G300/proprietary/lib/pp_proc_plugin.so:system/lib/pp_proc_plugin.so \
    device/huawei/G300/proprietary/lib/qnet-plugin.so:system/lib/qnet-plugin.so \
    device/huawei/G300/proprietary/lib/tcp-connections.so:system/lib/tcp-connections.so \
    device/huawei/G300/proprietary/lib/libhwnv.so:system/lib/libhwnv.so \
	device/huawei/G300/proprietary/bin/akmd8962:system/bin/akmd8962 \
	device/huawei/G300/proprietary/bin/akmd8975:system/bin/akmd8975 \
	device/huawei/G300/proprietary/bin/rmt_storage:system/bin/rmt_storage \
	device/huawei/G300/proprietary/bin/rmt_oeminfo:system/bin/rmt_oeminfo \
	device/huawei/G300/proprietary/bin/sdcard:system/bin/sdcard \
	device/huawei/G300/proprietary/bin/compassd:system/bin/compassd \
	device/huawei/G300/proprietary/bin/charge:system/bin/charge \
	device/huawei/G300/proprietary/bin/oem_rpc_svc:system/bin/oem_rpc_svc \
	device/huawei/G300/proprietary/bin/port-bridge:system/bin/port-bridge \
	
#ETC init files	
PRODUCT_COPY_FILES += \
	device/huawei/G300/proprietary/etc/init.qcom.composition_type.sh:system/etc/init.qcom.composition_type.sh \
	device/huawei/G300/proprietary/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
	device/huawei/G300/proprietary/etc/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
	device/huawei/G300/proprietary/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
	device/huawei/G300/proprietary/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
	device/huawei/G300/proprietary/etc/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
	device/huawei/G300/proprietary/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
	
#RIL
PRODUCT_COPY_FILES += \
    device/huawei/G300/proprietary/lib/libril-qc-qmi-1.so:system/lib/libril-qc-qmi-1.so \
    device/huawei/G300/proprietary/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \
    device/huawei/G300/proprietary/lib/libril-qc-1.so:system/lib/libril-qc-1.so \
	device/huawei/G300/proprietary/lib/liboncrpc.so:system/lib/liboncrpc.so \
	device/huawei/G300/proprietary/lib/libdsm.so:system/lib/libdsm.so \
	device/huawei/G300/proprietary/lib/libqueue.so:system/lib/libqueue.so \
	device/huawei/G300/proprietary/lib/libdiag.so:system/lib/libdiag.so \
	device/huawei/G300/proprietary/lib/libauth.so:system/lib/libauth.so \
	device/huawei/G300/proprietary/lib/libcm.so:system/lib/libcm.so \
	device/huawei/G300/proprietary/lib/libnv.so:system/lib/libnv.so \
	device/huawei/G300/proprietary/lib/libpbmlib.so:system/lib/libpbmlib.so \
	device/huawei/G300/proprietary/lib/libwms.so:system/lib/libwms.so \
	device/huawei/G300/proprietary/lib/libwmsts.so:system/lib/libwmsts.so \
	device/huawei/G300/proprietary/lib/libhwrpc.so:system/lib/libhwrpc.so \
	device/huawei/G300/proprietary/lib/libhwrpc.so:obj/lib/libhwrpc.so \
	device/huawei/G300/proprietary/lib/libqmi.so:system/lib/libqmi.so \
	device/huawei/G300/proprietary/lib/libdsutils.so:system/lib/libdsutils.so \
	device/huawei/G300/proprietary/lib/libqmiservices.so:system/lib/libqmiservices.so \
	device/huawei/G300/proprietary/lib/libidl.so:system/lib/libidl.so \
	device/huawei/G300/proprietary/lib/libdsi_netctrl.so:system/lib/libdsi_netctrl.so \
	device/huawei/G300/proprietary/lib/libqdi.so:system/lib/libqdi.so \
	device/huawei/G300/proprietary/lib/libnetmgr.so:system/lib/libnetmgr.so \
	device/huawei/G300/proprietary/lib/libqdp.so:system/lib/libqdp.so \
	device/huawei/G300/proprietary/lib/libcneapiclient.so:system/lib/libcneapiclient.so \
	device/huawei/G300/proprietary/lib/libcneqmiutils.so:system/lib/libcneqmiutils.so \
	device/huawei/G300/proprietary/lib/libcneutils.so:system/lib/libcneutils.so \
	device/huawei/G300/proprietary/bin/cnd:system/bin/cnd \
	device/huawei/G300/proprietary/bin/netmgrd:system/bin/netmgrd \
   device/huawei/G300/proprietary/bin/modempre:system/bin/modempre \
   device/huawei/G300/proprietary/bin/qmiproxy:system/bin/qmiproxy \
   device/huawei/G300/proprietary/bin/qmuxd:system/bin/qmuxd \
   device/huawei/G300/proprietary/bin/bridgemgrd:system/bin/bridgemgrd \
   device/huawei/G300/proprietary/bin/modempre:system/bin/modempre \
   device/huawei/G300/proprietary/bin/ATFWD-daemon:system/bin/ATFWD-daemon \
   device/huawei/G300/proprietary/bin/rild:system/bin/rild \
	device/huawei/G300/proprietary/bin/rild:obj/bin/rild \
	device/huawei/G300/proprietary/lib/libreference-ril.so:system/lib/libreference-ril.so \
	device/huawei/G300/proprietary/lib/libreference-ril.so:obj/lib/libreference-ril.so \
   device/huawei/G300/proprietary/lib/libril.so:obj/lib/libril.so \
   device/huawei/G300/proprietary/lib/libril.so:system/lib/libril.so \

	
#codecs	
PRODUCT_COPY_FILES += \
	device/huawei/G300/proprietary/lib/libmmparser.so:system/lib/libmmparser.so \
	device/huawei/G300/proprietary/lib/libmmparser_divxdrmlib.so:system/lib/libmmparser_divxdrmlib.so \
	device/huawei/G300/proprietary/lib/libmmosal.so:system/lib/libmmosal.so \
    device/huawei/G300/proprietary/lib/libOmxAacDec.so:system/lib/libOmxAacDec.so \
    device/huawei/G300/proprietary/lib/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \
    device/huawei/G300/proprietary/lib/libOmxAdpcmDec.so:system/lib/libOmxAdpcmDec.so \
    device/huawei/G300/proprietary/lib/libOmxAmrDec.so:system/lib/libOmxAmrDec.so \
    device/huawei/G300/proprietary/lib/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \
    device/huawei/G300/proprietary/lib/libOmxAmrRtpDec.so:system/lib/libOmxAmrRtpDec.so \
    device/huawei/G300/proprietary/lib/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so \
    device/huawei/G300/proprietary/lib/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \
    device/huawei/G300/proprietary/lib/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \
    device/huawei/G300/proprietary/lib/libOmxEvrcHwDec.so:system/lib/libOmxEvrcHwDec.so \
    device/huawei/G300/proprietary/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
    device/huawei/G300/proprietary/lib/libOmxIttiamVdec.so:system/lib/libOmxIttiamVdec.so \
    device/huawei/G300/proprietary/lib/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \
    device/huawei/G300/proprietary/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
    device/huawei/G300/proprietary/lib/libOmxOn2Dec.so:system/lib/libOmxOn2Dec.so \
    device/huawei/G300/proprietary/lib/libOmxQcelp13Dec.so:system/lib/libOmxQcelp13Dec.so \
    device/huawei/G300/proprietary/lib/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \
    device/huawei/G300/proprietary/lib/libOmxQcelpHwDec.so:system/lib/libOmxQcelpHwDec.so \
    device/huawei/G300/proprietary/lib/libOmxrv9Dec.so:system/lib/libOmxrv9Dec.so \
    device/huawei/G300/proprietary/lib/libOmxVp8Dec.so:system/lib/libOmxVp8Dec.so \
    device/huawei/G300/proprietary/lib/libOmxWmaDec.so:system/lib/libOmxWmaDec.so \
    device/huawei/G300/proprietary/lib/libOmxWmvDec.so:system/lib/libOmxWmvDec.so \
    device/huawei/G300/proprietary/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \

#camera
PRODUCT_COPY_FILES += \
	device/huawei/G300/proprietary/lib/libmmipl.so:system/lib/libmmipl.so \
	device/huawei/G300/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
	device/huawei/G300/proprietary/lib/libmmjpeg.so:obj/lib/libmmjpeg.so \
    device/huawei/G300/proprietary/lib/liboemcamera.so:obj/lib/liboemcamera.so \
    device/huawei/G300/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \
	device/huawei/G300/proprietary/lib/libgemini.so:system/lib/libgemini.so \
    device/huawei/G300/proprietary/bin/v4l2-qcamera-app:system/bin/v4l2-qcamera-app \
	device/huawei/G300/proprietary/bin/mm-qcamera-daemon:system/bin/mm-qcamera-daemon \
	device/huawei/G300/proprietary/bin/mm-qcamera-test:system/bin/mm-qcamera-test \
	device/huawei/G300/proprietary/bin/mm-qcamera-testsuite-client:system/bin/mm-qcamera-testsuite-client \
	device/huawei/G300/proprietary/lib/libchromatix_imx074_default_video.so:system/lib/libchromatix_imx074_default_video.so \
    device/huawei/G300/proprietary/lib/libchromatix_imx074_preview.so:system/lib/libchromatix_imx074_preview.so \
    device/huawei/G300/proprietary/lib/libchromatix_mt9p017_ar.so:system/lib/libchromatix_mt9p017_ar.so \
    device/huawei/G300/proprietary/lib/libchromatix_mt9p017_default_video.so:system/lib/libchromatix_mt9p017_default_video.so \
    device/huawei/G300/proprietary/lib/libchromatix_mt9p017_preview.so:system/lib/libchromatix_mt9p017_preview.so \
    device/huawei/G300/proprietary/lib/libchromatix_ov2720_default_video.so:system/lib/libchromatix_ov2720_default_video.so \
    device/huawei/G300/proprietary/lib/libchromatix_ov2720_preview.so:system/lib/libchromatix_ov2720_preview.so \
    device/huawei/G300/proprietary/lib/libchromatix_s5k4e1_ar.so:system/lib/libchromatix_s5k4e1_ar.so \
    device/huawei/G300/proprietary/lib/libchromatix_s5k4e1_default_video.so:system/lib/libchromatix_s5k4e1_default_video.so \
    device/huawei/G300/proprietary/lib/libchromatix_s5k4e1_preview.so:system/lib/libchromatix_s5k4e1_preview.so \
	device/huawei/G300/proprietary/lib/hw/camera.msm7x27a.so:obj/lib/hw/camera.msm7x27a.so \
    device/huawei/G300/proprietary/lib/hw/camera.msm7x27a.so:system/lib/hw/camera.msm7x27a.so \
    device/huawei/G300/proprietary/lib/libwvm.so:system/lib/libwvm.so \
    device/huawei/G300/proprietary/lib/libwidevine.so:system/lib/libwidevine.so \
    device/huawei/G300/proprietary/lib/libmm-abl.so:system/lib/libmm-abl.so \
    device/huawei/G300/proprietary/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
    device/huawei/G300/proprietary/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \
    device/huawei/G300/proprietary/lib/drm/libdrmwvmplugin.so:system/lib/drm/libdrmwvmplugin.so \
    device/huawei/G300/proprietary/framework/com.google.widevine.software.drm.jar:system/framework/com.google.widevine.software.drm.jar \

	
#Bluetooth setup
PRODUCT_COPY_FILES += \
	device/huawei/G300/proprietary/bin/brcm_patchram_plus:system/bin/brcm_patchram_plus \
	device/huawei/G300/proprietary/bin/btld:system/bin/btld \
	device/huawei/G300/proprietary/bin/btnvtool:system/bin/btnvtool \
	device/huawei/G300/proprietary/bin/amploader:system/bin/amploader \
	device/huawei/G300/proprietary/bin/dun-server:system/bin/dun-server \
	device/huawei/G300/proprietary/bin/sapd:system/bin/sapd \
	device/huawei/G300/proprietary/bin/sdptool:system/bin/sdptool \
	device/huawei/G300/proprietary/bin/hci_qcomm_init:system/bin/hci_qcomm_init \
	device/huawei/G300/proprietary/etc/bluetooth/BCM4330.hcd:system/etc/bluetooth/BCM4330.hcd \
	device/huawei/G300/proprietary/etc/bluetooth/input.conf:system/etc/bluetooth/input.conf \
	device/huawei/G300/proprietary/etc/bluetooth/main.conf:system/etc/bluetooth/main.conf \
	device/huawei/G300/proprietary/etc/bluetooth/network.conf:system/etc/bluetooth/network.conf \
	device/huawei/G300/proprietary/etc/bluetooth/init.bcm.bt.sh:system/etc/bluetooth/init.bcm.bt.sh \

# Ringtones
PRODUCT_COPY_FILES += \
	device/huawei/G300/proprietary/TheLastMalev.ogg:system/media/audio/ringtones/TheLastMalev.ogg \
	