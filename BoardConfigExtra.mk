#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# MiuiCamera
ifneq (,$(filter cupid mondrian unicorn zeus,$(PRODUCT_DEVICE)))
-include device/xiaomi/miuicamera-cupid/BoardConfig.mk
endif

# Pixel Goodies
ifeq ($(WITH_GMS),true)
-include vendor/google/pixel-goodies/board.mk
endif
