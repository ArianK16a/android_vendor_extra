#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# ADB
ifneq (,$(wildcard $(EXTRA_PATH)/adbkey.pub))
PRODUCT_ADB_KEYS := $(EXTRA_PATH)/adbkey.pub
endif

# Google Sans
$(call inherit-product-if-exists, vendor/google_sans/product.mk)

# MiuiCamera
$(call inherit-product-if-exists, device/xiaomi/miuicamera-$(shell echo -n $(TARGET_PRODUCT) | sed -e 's/^[a-z]*_//g')/device.mk)

# OTA
PRODUCT_PACKAGES += UpdaterOverlay

# Pixel Clocks
$(call inherit-product-if-exists, vendor/pixel_clocks/product.mk)

# Translations
PRODUCT_PACKAGES += \
    MotorTranslationsOverlay
