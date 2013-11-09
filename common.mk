include $(TOPDIR)jcrom/common/version.mk

PRODUCT_PROPERTY_OVERRIDES += \
  ro.jcrom.version=$(JCROM_VERSION)

PRODUCT_PACKAGES += \
    jctool \
    bootsound \
    stagefright

PRODUCT_PACKAGES += \
    busybox

PRODUCT_PACKAGES += \
    VisualThemeSelector \
    JCWallpaper

ifneq ($(TARGET_PRODUCT),aosp_manta)
PRODUCT_PACKAGES += \
    JCLauncher
endif

PRODUCT_COPY_FILES +=  \
    jcrom/common/init.jcrom.rc:root/init.jcrom.rc \
    jcrom/common/prebuilt/apps/japanesekeyboard/japanesekeyboard_1.1.apk:system/app/japanesekeyboard_1.1.apk

PRODUCT_COPY_FILES += \
    jcrom/common/prebuilt/bin/backuptool.sh:system/bin/backuptool.sh \
    jcrom/common/prebuilt/bin/backuptool.functions:system/bin/backuptool.functions \
    jcrom/common/prebuilt/bin/template.sh:system/addon.d/template.sh

