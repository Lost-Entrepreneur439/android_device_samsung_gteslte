#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit device configuration
$(call inherit-product, device/samsung/gteslte/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)
$(call inherit-product, vendor/cm/config/telephony.mk)


## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_gteslte
PRODUCT_DEVICE := gteslte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T377W
PRODUCT_MANUFACTURER := samsung
PRODUCT_CHARACTERISTICS := tablet
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="samsung/gtesltebmc/gtesltebmc:7.1.1/NMF26X/T377WVLU3BRG4:user/release-keys" \
    PRIVATE_BUILD_DESC="gtesltebmc-user 7.1.1 NMF26X T377WVLU3BRG4 release-keys"
