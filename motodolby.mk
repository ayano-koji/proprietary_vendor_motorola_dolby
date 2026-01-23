#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from the proprietary version
$(call inherit-product, vendor/motorola/dolby/dolby-vendor.mk)

DOLBY_PATH := vendor/motorola/dolby

# Dax
PRODUCT_COPY_FILES += \
    $(DOLBY_PATH)/configs/dolby/dax-default-spatializer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default-spatializer.xml \
    $(DOLBY_PATH)/configs/dolby/dax-default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default.xml \
    $(DOLBY_PATH)/configs/dolby/dax-moto_1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-moto_1.xml \
    $(DOLBY_PATH)/configs/dolby/dax-moto_2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-moto_2.xml \
    $(DOLBY_PATH)/configs/dolby/dax-moto_3.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-moto_3.xml


# DolbyAtmos
PRODUCT_PACKAGES += \
    DolbyAtmos

# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(DOLBY_PATH)/sepolicy/vendor

# Properties
TARGET_VENDOR_PROP += $(DOLBY_PATH)/vendor.prop

# VINTF
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += $(DOLBY_PATH)/configs/vintf/dolby_framework_matrix.xml
