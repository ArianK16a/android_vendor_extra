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
ifeq ($(WITH_GMS),true)
$(call inherit-product-if-exists, vendor/google_sans/product.mk)
endif

# MiuiCamera
ifneq (,$(filter cupid mondrian unicorn zeus,$(shell echo -n $(TARGET_PRODUCT) | sed -e 's/^[a-z]*_//g')))
$(call inherit-product-if-exists, device/xiaomi/miuicamera-cupid/device.mk)
endif

# OTA
ifeq ($(WITH_GMS),true)
PRODUCT_PACKAGES += GmsUpdaterOverlay
else
PRODUCT_PACKAGES += UpdaterOverlay
endif

# Pixel Clocks
ifeq ($(WITH_GMS),true)
$(call inherit-product-if-exists, vendor/pixel_clocks/product.mk)
endif

# Translations
ifeq (lineage_davinci,TARGET_PRODUCT)
PRODUCT_PACKAGES += \
    MotorTranslationsOverlay
endif
