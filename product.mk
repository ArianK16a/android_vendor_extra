# Google Apps
WITH_GMS := true
$(call inherit-product, vendor/gms/products/gms.mk)

# OTA
PRODUCT_PACKAGES += UpdaterOverlay
