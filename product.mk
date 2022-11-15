#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# GMS
WITH_GMS := true
$(call inherit-product, vendor/gms/products/gms.mk)

# Fonts
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/extra/overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/extra/overlay

# OTA
PRODUCT_PACKAGES += UpdaterOverlay

# Translations
PRODUCT_PACKAGES += \
    MotorTranslationsOverlay
