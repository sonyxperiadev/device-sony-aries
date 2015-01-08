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

TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
PRODUCT_COPY_FILES += $(TARGET_PREBUILT_KERNEL):kernel

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony.mk)
$(call inherit-product-if-exists, device/sony/shinano/device.mk)
$(call inherit-product-if-exists, vendor/sony/aries/aries-vendor.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
#$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4354/device-bcm.mk)

PRODUCT_COPY_FILES += \
    device/sony/aries/rootdir/logo.rle:root/logo.rle \
    device/sony/aries/rootdir/system/etc/BCM4354.hcd:system/etc/firmware/BCM43xx.hcd \
    device/sony/aries/rootdir/system/etc/bcmdhd.cal:system/etc/firmware/wlan/bcmdhd/bcmdhd.cal \
    device/sony/aries/rootdir/system/etc/sensors_calib.conf:system/etc/sensors_calib.conf \
    device/sony/aries/rootdir/system/etc/sensor_def_qcomdev.conf:system/etc/sensor_def_qcomdev.conf \
    device/sony/aries/rootdir/system/etc/thermanager.xml:system/etc/thermanager.xml

PRODUCT_NAME := aosp_d5803
PRODUCT_DEVICE := aries
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Xperia Z3 Compact (AOSP)
PRODUCT_LOCALES += xhdpi hdpi
PRODUCT_MANUFACTURER := Sony

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=320
