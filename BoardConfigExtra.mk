#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Google Sans
-include vendor/google_sans/board.mk

# MiuiCamera
ifneq (,$(filter cupid mondrian unicorn zeus,$(PRODUCT_DEVICE)))
-include device/xiaomi/miuicamera-cupid/BoardConfig.mk
endif

# Pixel Clocks
-include vendor/pixel_clocks/board.mk
