#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# ADB
ifneq (,$(wildcard $(EXTRA_PATH)/adbkey.pub))
PRODUCT_ADB_KEYS := $(EXTRA_PATH)/adbkey.pub
endif

# OTA
PRODUCT_PACKAGES += UpdaterOverlay

# Translations
PRODUCT_PACKAGES += \
    MotorTranslationsOverlay
