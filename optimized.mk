
#bionic
PRODUCT_COPY_FILES +=  \
    jcrom/common/optimized/system/lib/libc.so:system/lib/libc.so \
    jcrom/common/optimized/system/lib/libm.so:system/lib/libm.so

#dalvik
PRODUCT_COPY_FILES += \
    jcrom/common/optimized/system/bin/dalvikvm:system/bin/dalvikvm \
    jcrom/common/optimized/system/bin/dexopt:system/bin/dexopt \
    jcrom/common/optimized/system/bin/installd:system/bin/installd \
    jcrom/common/optimized/system/lib/libcutils.so:system/lib/libcutils.so \
    jcrom/common/optimized/system/lib/libdvm.so:system/lib/libdvm.so \
    jcrom/common/optimized/system/lib/libqc-opt.so:system/lib/libqc-opt.so
