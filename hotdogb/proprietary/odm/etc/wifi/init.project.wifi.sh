#Sukshata@Wifi.BDF,NA 2022/01/21
#load oneplus bdf files.
hw_version=`getprop ro.boot.hw_version`
rf_version=`getprop ro.boot.rf_version`
tempstr=`getprop persist.vendor.oem.wifi.chain`

if [ $hw_version = '11' ] || [ $hw_version = '12' ] || [ $hw_version = '13' ] || [ $hw_version = '14' ] || [ $hw_version = '15' ] || [ $hw_version = '52' ] || [ $hw_version = '53' ]; then
    #As per new logic US version 19851
    if [ $rf_version = '5' ]
    then
        if [ "$tempstr" -eq "1" ]
        then
            cp /odm/etc/wifi/4bdwlan0.b0a /mnt/vendor/persist/bdwlan.bin
            echo "copied 4bdwlan0.b0a successfully" > /dev/kmsg
        elif [ "$tempstr" -eq "2" ]
        then
            cp /odm/etc/wifi/4bdwlan1.b0a /mnt/vendor/persist/bdwlan.bin
            echo "copied 4bdwlan1.b0a successfully" > /dev/kmsg
        else
            cp /odm/etc/wifi/4bdwlan.b0a /mnt/vendor/persist/bdwlan.bin
            echo "copied 4bdwlan.b0a successfully" > /dev/kmsg
        fi
    #As per new logic India version 19853
    elif [ $rf_version = '3' ]
    then
        if [ "$tempstr" -eq "1" ]
        then
            cp /odm/etc/wifi/4bdwlan0.b0c /mnt/vendor/persist/bdwlan.bin
            echo "copied 4bdwlan0.b0c successfully" > /dev/kmsg
        elif [ "$tempstr" -eq "2" ]
        then
            cp /odm/etc/wifi/4bdwlan1.b0c /mnt/vendor/persist/bdwlan.bin
            echo "copied 4bdwlan1.b0c successfully" > /dev/kmsg
        else
            cp /odm/etc/wifi/4bdwlan.b0c /mnt/vendor/persist/bdwlan.bin
            echo "copied 4bdwlan.b0c successfully" > /dev/kmsg
        fi
    fi
fi
#end
