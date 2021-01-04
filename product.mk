#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

EXTRA_PATH := vendor/extra

# ADB
ifneq (,$(wildcard $(EXTRA_PATH)/adbkey.pub))
PRODUCT_ADB_KEYS := $(EXTRA_PATH)/adbkey.pub
PRODUCT_COPY_FILES += $(PRODUCT_ADB_KEYS):$(TARGET_COPY_OUT_RECOVERY)/root/$(TARGET_COPY_OUT_PRODUCT)/etc/security/adb_keys
endif

# Default ADB shell prompt
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.sys.adb.shell=/system/xbin/bash

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

# Overlays
PRODUCT_PACKAGE_OVERLAYS += $(EXTRA_PATH)/overlay-lineage

# Pixel Clocks
ifeq ($(WITH_GMS),true)
$(call inherit-product-if-exists, vendor/pixel_clocks/product.mk)
endif

# Translations
ifeq (lineage_davinci,TARGET_PRODUCT)
PRODUCT_PACKAGES += \
    MotorTranslationsOverlay
endif
