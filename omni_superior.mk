#
# Copyright (C) 2012 The CyanogenMod Project
# Copyright (C) 2013 The OmniROM Project
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

# Inherit Omni GSM telephony parts
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit common Omni configurations
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/samsung/superior/device.mk)

# Discard inherited values and use our own instead.
PRODUCT_MODEL := GT-I9260
PRODUCT_BRAND := samsung
PRODUCT_NAME := omni_superior
PRODUCT_DEVICE := superior
PRODUCT_MANUFACTURER := samsung

#Set build fingerprint / ID / Prduct Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=superiorxx \
    TARGET_DEVICE=superior \
    PRIVATE_BUILD_DESC="superiorxx-user 4.1.2 JZO54K I9260XXAMC3 release-keys" \
    BUILD_FINGERPRINT="samsung/superiorxx/superior:4.1.2/JZO54K/I9260XXAMC3:user/release-keys"
