#Sukshata@Wifi.BDF,NA 2022/01/21
#load oneplus bdf files for 18857 model
hw_version=`getprop ro.boot.hw_version`
rf_version=`getprop ro.boot.rf_version`
tempstr=`getprop persist.vendor.oem.wifi.chain`

cp /odm/etc/wifi/bdwlan.57 /mnt/vendor/persist/bdwlan.bin
echo "copied bdwlan.57 successfully" > /dev/kmsg
#end
