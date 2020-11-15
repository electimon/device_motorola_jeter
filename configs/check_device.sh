#!/sbin/sh

sku=`getprop ro.boot.hardware.sku`

if [ "$sku" = "XT1922-10" ] || [ "$sku" = "XT1922-5" ] || [ "$sku" = "XT1922-4" ] || [ "$sku" = "XT1922-2" ]; then
    mv /vendor/etc/audio_platform_info_aljeter.xml /vendor/etc/audio_platform_info.xml
    mv /vendor/etc/mixer_paths_aljeter.xml /vendor/etc/mixer_paths.xml
    mv /vendor/etc/sensors/sensor_def_qcomdev_aljeter.conf /vendor/etc/sensors/sensor_def_qcomdev.conf
else
    rm /vendor/etc/audio_platform_info_aljeter.xml
    rm /vendor/etc/mixer_paths_aljeter.xml
    rm /vendor/etc/sensors/sensor_def_qcomdev_aljeter.conf
fi

# Replace EGL for jeter variants
if [ "$sku" = "XT1922-7" ] || [ "$sku" = "XT1922-9" ]; then
    mv /vendor/lib/egl/libEGL_adreno_8917.so /vendor/lib/egl/libEGL_adreno.so
    mv /vendor/lib/egl/libGLESv1_CM_adreno_8917.so /vendor/lib/egl/libGLESv1_CM_adreno.so
    mv /vendor/lib/egl/libGLESv2_adreno_8917.so /vendor/lib/egl/libGLESv2_adreno.so
    mv /vendor/lib64/egl/libEGL_adreno_8917.so /vendor/lib64/egl/libEGL_adreno.so
    mv /vendor/lib64/egl/libGLESv1_CM_adreno_8917.so /vendor/lib64/egl/libGLESv1_CM_adreno.so
    mv /vendor/lib64/egl/libGLESv2_adreno_8917.so /vendor/lib64/egl/libGLESv2_adreno.so
else
    rm /vendor/lib/egl/libEGL_adreno_8917.so
    rm /vendor/lib/egl/libGLESv1_CM_adreno_8917.so
    rm /vendor/lib/egl/libGLESv2_adreno_8917.so
    rm /vendor/lib64/egl/libEGL_adreno_8917.so
    rm /vendor/lib64/egl/libGLESv1_CM_adreno_8917.so
    rm /vendor/lib64/egl/libGLESv2_adreno_8917.so
fi
