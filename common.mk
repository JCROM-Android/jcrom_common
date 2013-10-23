PRODUCT_VERSION_MAJOR = 1
PRODUCT_VERSION_MINOR = 1
PRODUCT_VERSION_MAINTENANCE = 0

JCROM_VERSION := JCROM-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)-$(shell LANG=en date -u +%Y%m%d)

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

PRODUCT_COPY_FILES +=  \
    jcrom/common/init.jcrom.rc:root/init.jcrom.rc \
    jcrom/common/prebuilt/apps/japanesekeyboard/japanesekeyboard_1.1.apk:system/app/japanesekeyboard_1.1.apk

PRODUCT_COPY_FILES += \
    jcrom/common/prebuilt/bin/backuptool.sh:system/bin/backuptool.sh \
    jcrom/common/prebuilt/bin/backuptool.functions:system/bin/backuptool.functions \
    jcrom/common/prebuilt/bin/template.sh:system/addon.d/template.sh

