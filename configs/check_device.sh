#!/sbin/sh

SKU=`getprop ro.boot.hardware.sku`

if [ "$SKU" = "XT1924-6" ] || [ "$SKU" = "XT1924-7" ] || [ "$SKU" = "XT1924-8" ]; then
    rm -rf /system_root/system/priv-app/MotoDoze
    rm /vendor/etc/audio_platform_info_ahannah.xml
    rm /vendor/etc/mixer_paths_ahannah.xml
    rm /vendor/etc/sensors/sensor_def_qcomdev_ahannah.conf
else
    mv /vendor/etc/audio_platform_info_ahannah.xml /vendor/etc/audio_platform_info.xml
    mv /vendor/etc/mixer_paths_ahannah.xml /vendor/etc/mixer_paths.xml
    mv /vendor/etc/sensors/sensor_def_qcomdev_ahannah.conf /vendor/etc/sensors/sensor_def_qcomdev.conf
    rm -rf /vendor/app/LineageActions
    rm /vendor/etc/permissions/android.hardware.sensor.compass.xml
    rm /vendor/etc/permissions/android.hardware.sensor.gyroscope.xml
fi

if [ "$SKU" = "XT1924-1" ] || [ "$SKU" = "XT1924-4" ] || [ "$SKU" = "XT1924-5" ]; then
    rm /vendor/etc/permissions/android.hardware.vulkan.compute-0.xml
    rm /vendor/etc/permissions/android.hardware.vulkan.level-0.xml
    rm /vendor/etc/permissions/android.hardware.vulkan.version-1_1.xml
fi
