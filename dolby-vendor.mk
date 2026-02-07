#
# Automatically generated file. DO NOT MODIFY
#

PRODUCT_SOONG_NAMESPACES += \
    vendor/motorola/dolby

PRODUCT_COPY_FILES += \
    vendor/motorola/dolby/proprietary/vendor/etc/init/dms-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/dms-service.rc \
    vendor/motorola/dolby/proprietary/vendor/etc/init/vendor.dolby.media.c2@1.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.dolby.media.c2@1.0-service.rc \
    vendor/motorola/dolby/proprietary/vendor/etc/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml

PRODUCT_PACKAGES += \
    libdapparamstorage \
    libdlbpreg \
    libdmshal \
    libspatializerparamstorage \
    libdlbvol \
    libswdap \
    libswgamedap \
    libswspatializer \
    vendor.dolby.dms-V1-ndk \
    vendor.dolby.hardware.dms@2.0 \
    vendor.dolby.hardware.dms@2.1 \
    libcodec2_soft_ac4dec \
    libcodec2_soft_ddpdec \
    libcodec2_store_dolby \
    libdeccfg \
    libdlbdsservice \
    dms-service.xml \
    vendor.dolby.media.c2@1.0-service.xml \
    vendor.dolby.dms.service \
    vendor.dolby.media.c2@1.0-service
