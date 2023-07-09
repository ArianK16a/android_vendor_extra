#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Fonts
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/extra/overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/extra/overlay

# ih8sn
PRODUCT_PACKAGES += \
    ih8sn

PRODUCT_COPY_FILES += \
    vendor/extra/ih8sn.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/ih8sn.conf

# OTA
PRODUCT_PACKAGES += UpdaterOverlay

# Translations
PRODUCT_PACKAGES += \
    MotorTranslationsOverlay
