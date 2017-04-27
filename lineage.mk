#
# Copyright 2012 The Android Open Source Project
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
#

$(call inherit-product, vendor/cm/config/common.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

LOCAL_PATH := device/nubia/nx512j

# Charger
PRODUCT_PACKAGES += charger charger_res_images \
    init.recovery.qcom.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/dt.img:dt.img \
    $(LOCAL_PATH)/kernel:kernel \
    $(LOCAL_PATH)/fstab.qcom:root/fstab.qcom \
    $(LOCAL_PATH)/recovery/etc/twrp.fstab:root/etc/twrp.fstab

# Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_nx512j
BOARD_VENDOR := nubia
PRODUCT_DEVICE := nx512j

PRODUCT_GMS_CLIENTID_BASE := android-nubia

TARGET_VENDOR_PRODUCT_NAME := NX512J
TARGET_VENDOR_DEVICE_NAME := NX512J
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=NX512J PRODUCT_NAME=NX512J
