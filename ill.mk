# Inherit Illusion common Phone stuff.
$(call inherit-product, vendor/illusion/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/illusion/config/nfc_enhanced.mk)

# Inherit AOSP Device
$(call inherit-product, device/sony/honami/full_honami.mk)

# Build Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=C6903 BUILD_FINGERPRINT=Sony/C6903/C6903:4.3/14.2.A.0.290/eng.hudsonslave:user/release-keys PRIVATE_BUILD_DESC="C6903-user 4.3 RHINE-1.1-131125-1201 eng.hudsonslave test-keys"

# Bootanimation
PRODUCT_COPY_FILES += \
        vendor/illusion/bootanimation/Illusion1080x1080.zip:system/media/bootanimation.zip

# Kernel building
TARGET_KERNEL_SOURCE := kernel/sony/msm8974
TARGET_KERNEL_CONFIG := cm_rhine_honami_row_defconfig
TARGET_VARIANT_CONFIG := cm_rhine_honami_row_defconfig
TARGET_SELINUX_CONFIG := cm_rhine_honami_row_defconfig

PRODUCT_NAME := ill_honami
PRODUCT_DEVICE := honami
