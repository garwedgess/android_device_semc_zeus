# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk
-include device/semc/zeus-common/BoardConfigCommon.mk

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/semc/zeus/config

# kernel
TARGET_KERNEL_SOURCE := kernel/semc/msm7x30
TARGET_KERNEL_CONFIG := gar_zeus_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3

TARGET_RECOVERY_INITRC := device/semc/zeus/recovery/init.rc

# sensor
SENSORS_COMPASS_AK8975 := true
SENSORS_ACCEL_BMA150_INPUT := true
SENSORS_ACCEL_BMA250_INPUT := false
SENSORS_PROXIMITY_SHARP_GP2 := true
SENSORS_PRESSURE_BMP180 := false

TARGET_TOUCHPAD_INPUT_DEVICE_ID := 0x10003

BOARD_USES_STEREO_HW_SPEAKER := true

# assert
TARGET_OTA_ASSERT_DEVICE := R800i,R800a,R800at,zeus

-include vendor/semc/zeus/BoardConfigVendor.mk
