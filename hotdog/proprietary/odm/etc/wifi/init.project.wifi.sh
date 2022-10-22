#Sukshata@Wifi.BDF,NA 2022/01/21
#load oneplus bdf files.
hw_version=`getprop ro.boot.hw_version`
rf_version=`getprop ro.boot.rf_version`
tempstr=`getprop persist.vendor.oem.wifi.chain`

if [ "$tempstr" -eq "1" ]
then
    cp /odm/etc/wifi/5bdwlan0.b0c /mnt/vendor/persist/bdwlan.bin
    echo "5bdwlan0.b0c successfully" > /dev/kmsg
elif [ "$tempstr" -eq "2" ]
then
    cp /odm/etc/wifi/5bdwlan1.b0c /mnt/vendor/persist/bdwlan.bin
    echo "copied 5bdwlan1.b0c successfully" > /dev/kmsg
else
    cp /odm/etc/wifi/5bdwlan.b0c /mnt/vendor/persist/bdwlan.bin
    echo "copied 5bdwlan.b0c successfully" > /dev/kmsg
fi
#end
