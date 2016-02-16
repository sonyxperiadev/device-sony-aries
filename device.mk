# Copyright 2014 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE_PACKAGE_OVERLAYS += \
    device/sony/aries/overlay

PRODUCT_COPY_FILES := \
    device/sony/aries/rootdir/system/etc/audio_policy.conf:system/etc/audio_policy.conf \
    device/sony/aries/rootdir/system/etc/BCM4339.hcd:system/etc/firmware/BCM43xx.hcd \
    device/sony/aries/rootdir/system/etc/wifi/bcmdhd.cal:system/etc/wifi/bcmdhd.cal \
    device/sony/aries/rootdir/system/etc/sensor_def_qcomdev.conf:system/etc/sensor_def_qcomdev.conf \
    device/sony/aries/rootdir/system/etc/thermanager.xml:system/etc/thermanager.xml \
    device/sony/aries/rootdir/system/etc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    device/sony/aries/rootdir/system/etc/libnfc-nxp.conf:system/etc/libnfc-nxp.conf \
    device/sony/aries/rootdir/system/etc/mixer_paths.xml:system/etc/mixer_paths.xml

PRODUCT_COPY_FILES += \
    device/sony/aries/rootdir/system/etc/tfa98xx/coldboot.patch:/system/etc/tfa98xx/coldboot.patch \
    device/sony/aries/rootdir/system/etc/tfa98xx/TFA9890.patch:/system/etc/tfa98xx/TFA9890.patch \
    device/sony/aries/rootdir/system/etc/tfa98xx/TFA9890_top.config:/system/etc/tfa98xx/TFA9890_top.config \
    device/sony/aries/rootdir/system/etc/tfa98xx/TFA9890_btm.config:/system/etc/tfa98xx/TFA9890_btm.config \
    device/sony/aries/rootdir/system/etc/tfa98xx/btm.speaker:/system/etc/tfa98xx/btm.speaker \
    device/sony/aries/rootdir/system/etc/tfa98xx/top.speaker:/system/etc/tfa98xx/top.speaker \
    device/sony/aries/rootdir/system/etc/tfa98xx/HiFiSpeaker_top.preset:/system/etc/tfa98xx/HiFiSpeaker_top.preset \
    device/sony/aries/rootdir/system/etc/tfa98xx/HiFiSpeaker_btm.preset:/system/etc/tfa98xx/HiFiSpeaker_btm.preset \
    device/sony/aries/rootdir/system/etc/tfa98xx/HiFiSpeakerRing_top.preset:/system/etc/tfa98xx/HiFiSpeakerRing_top.preset \
    device/sony/aries/rootdir/system/etc/tfa98xx/HiFiSpeakerRing_btm.preset:/system/etc/tfa98xx/HiFiSpeakerRing_btm.preset \
    device/sony/aries/rootdir/system/etc/tfa98xx/HiFiSpeakerSforce_top.preset:/system/etc/tfa98xx/HiFiSpeakerSforce_top.preset \
    device/sony/aries/rootdir/system/etc/tfa98xx/HiFiSpeakerSforce_btm.preset:/system/etc/tfa98xx/HiFiSpeakerSforce_btm.preset \
    device/sony/aries/rootdir/system/etc/tfa98xx/VoiceCallSpeaker_top.preset:/system/etc/tfa98xx/VoiceCallSpeaker_top.preset \
    device/sony/aries/rootdir/system/etc/tfa98xx/VoiceCallSpeaker_btm.preset:/system/etc/tfa98xx/VoiceCallSpeaker_btm.preset \
    device/sony/aries/rootdir/system/etc/tfa98xx/FMSpeaker_top.preset:/system/etc/tfa98xx/FMSpeaker_top.preset \
    device/sony/aries/rootdir/system/etc/tfa98xx/FMSpeaker_btm.preset:/system/etc/tfa98xx/FMSpeaker_btm.preset \
    device/sony/aries/rootdir/system/etc/tfa98xx/HiFiSpeaker_top.eq:/system/etc/tfa98xx/HiFiSpeaker_top.eq \
    device/sony/aries/rootdir/system/etc/tfa98xx/HiFiSpeaker_btm.eq:/system/etc/tfa98xx/HiFiSpeaker_btm.eq \
    device/sony/aries/rootdir/system/etc/tfa98xx/HiFiSpeakerRing_top.eq:/system/etc/tfa98xx/HiFiSpeakerRing_top.eq \
    device/sony/aries/rootdir/system/etc/tfa98xx/HiFiSpeakerRing_btm.eq:/system/etc/tfa98xx/HiFiSpeakerRing_btm.eq \
    device/sony/aries/rootdir/system/etc/tfa98xx/HiFiSpeakerSforce_top.eq:/system/etc/tfa98xx/HiFiSpeakerSforce_top.eq \
    device/sony/aries/rootdir/system/etc/tfa98xx/HiFiSpeakerSforce_btm.eq:/system/etc/tfa98xx/HiFiSpeakerSforce_btm.eq \
    device/sony/aries/rootdir/system/etc/tfa98xx/VoiceCallSpeaker_top.eq:/system/etc/tfa98xx/VoiceCallSpeaker_top.eq \
    device/sony/aries/rootdir/system/etc/tfa98xx/VoiceCallSpeaker_btm.eq:/system/etc/tfa98xx/VoiceCallSpeaker_btm.eq \
    device/sony/aries/rootdir/system/etc/tfa98xx/FMSpeaker_top.eq:/system/etc/tfa98xx/FMSpeaker_top.eq \
    device/sony/aries/rootdir/system/etc/tfa98xx/FMSpeaker_btm.eq:/system/etc/tfa98xx/FMSpeaker_btm.eq \
    device/sony/aries/rootdir/system/etc/tfa98xx/TFA9890_Receiver.config:/system/etc/tfa98xx/TFA9890_Receiver.config \
    device/sony/aries/rootdir/system/etc/tfa98xx/VoiceCallEarpice_top.preset:/system/etc/tfa98xx/VoiceCallEarpice_top.preset \
    device/sony/aries/rootdir/system/etc/tfa98xx/VoiceCallEarpice_top.eq:/system/etc/tfa98xx/VoiceCallEarpice_top.eq

# Device Specific Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml

# Device Init
PRODUCT_PACKAGES += \
    init.recovery.aries \
    init.aries \
    ueventd.aries

# Lights
PRODUCT_PACKAGES += \
    lights.aries

# Simple PowerHAL
PRODUCT_PACKAGES += \
    power.aries

# NFC config
PRODUCT_PACKAGES += \
    nfc_nci.pn54x.default

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREBUILT_DPI := xhdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

PRODUCT_PROPERTY_OVERRIDES := \
    ro.sf.lcd_density=320 \
    ro.usb.pid_suffix=1BB

# Inherit from those products. Most specific first.
$(call inherit-product, device/sony/shinano/platform.mk)
$(call inherit-product, vendor/sony/aries/aries-vendor.mk)
