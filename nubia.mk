# Copyright (C) 2017-2018 The LineageOS Project
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

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
	device/nubia/nx627j/overlay \
	device/nubia/nx627j/overlay-lineage

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

$(call inherit-product-if-exists, vendor/nubia/nx627j/nx627j-vendor.mk)

# AID/fs configs
PRODUCT_PACKAGES += \
    fs_config_files

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0

# LiveDisplay
PRODUCT_PACKAGES += \
    vendor.lineage.livedisplay@2.0-service-sdm

# QTI
PRODUCT_COPY_FILES += \
    device/nubia/nx627j/configs/qti_whitelist.xml:system/etc/sysconfig/qti_whitelist.xml \
    device/nubia/nx627j/permissions/privapp-permissions-qti.xml:system/etc/permissions/privapp-permissions-qti.xml

# Seccomp policy
PRODUCT_COPY_FILES += \
    device/nubia/nx627j/seccomp/mediacodec.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy \
    device/nubia/nx627j/seccomp/mediaextractor.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor.policy

# TextClassifier
PRODUCT_PACKAGES += \
    textclassifier.bundle1

# Trust HAL
PRODUCT_PACKAGES += \
    vendor.lineage.trust@1.0-service

# VNDK
PRODUCT_PACKAGES += \
    vndk_package

# VNDK-SP
PRODUCT_PACKAGES += \
    vndk-sp
