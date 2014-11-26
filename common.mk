include $(TOPDIR)jcrom/common/version.mk

PRODUCT_PROPERTY_OVERRIDES += \
    ro.jcrom.version=$(JCROM_VERSION)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

#PRODUCT_PROPERTY_OVERRIDES += \
#    fw.power_user_switcher=true

PRODUCT_PACKAGES += \
    japanesekeyboard_1.1

PRODUCT_PACKAGES += \
    VisualThemeSelector \
    JCWallpaper \
    JCLauncher \
    jctool

PRODUCT_PACKAGE_OVERLAYS += \
    jcrom/common/overlay

PRODUCT_COPY_FILES +=  \
    jcrom/common/init.jcrom.rc:root/init.jcrom.rc

PRODUCT_COPY_FILES += \
    jcrom/common/prebuilt/etc/apns-full-conf.xml:system/etc/apns-conf.xml

PRODUCT_COPY_FILES += \
    jcrom/common/prebuilt/media/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.adb.secure=1
