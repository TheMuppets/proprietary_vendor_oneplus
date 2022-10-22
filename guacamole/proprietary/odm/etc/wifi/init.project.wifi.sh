#Sukshata@Wifi.BDF,NA 2022/01/21
#load oneplus bdf files.
hw_version=`getprop ro.boot.hw_version`
rf_version=`getprop ro.boot.rf_version`
tempstr=`getprop persist.vendor.oem.wifi.chain`

if [ $hw_version = '13' ] || [ $hw_version = '14' ] || [ $hw_version = '15' ] || [ $hw_version = '21' ]; then
# As per new logic US version 18823 will pick from here
    if [ $rf_version = '5' ]
    then
        if [ "$tempstr" -eq "1" ]
        then
            cp /odm/etc/wifi/bdwlan0.b0a /mnt/vendor/persist/bdwlan.bin
            echo "copied bdwlan0.b0a successfully" > /dev/kmsg
        elif [ "$tempstr" -eq "2" ]
        then
            cp /odm/etc/wifi/bdwlan1.b0a /mnt/vendor/persist/bdwlan.bin
            echo "copied bdwlan1.b0a successfully" > /dev/kmsg
        else
            cp /odm/etc/wifi/bdwlan.b0a /mnt/vendor/persist/bdwlan.bin
            echo "copied bdwlan.b0a successfully" > /dev/kmsg
        fi
#As per new logic India version 18815 will pick from here
    elif [ $rf_version = '3' ]
    then
        if [ "$tempstr" -eq "1" ]
        then
            cp /odm/etc/wifi/bdwlan0.b0i /mnt/vendor/persist/bdwlan.bin
            echo "copied bdwlan0.b0i successfully" > /dev/kmsg
        elif [ "$tempstr" -eq "2" ]
        then
            cp /odm/etc/wifi/bdwlan1.b0i /mnt/vendor/persist/bdwlan.bin
            echo "copied bdwlan1.b0i successfully" > /dev/kmsg
        else
            cp /odm/etc/wifi/bdwlan.b0i /mnt/vendor/persist/bdwlan.bin
            echo "copied bdwlan.b0i successfully" > /dev/kmsg
        fi
    fi
else
#hw version mismatch case
    #As per new logic hw mismatch case 18823 US
    if [ $rf_version = '5' ]
    then
        if [ "$tempstr" -eq "1" ]
        then
            cp /odm/etc/wifi/bdwlan0.b1a /mnt/vendor/persist/bdwlan.bin
            echo "copied bdwlan0.b1a successfully" > /dev/kmsg
        elif [ "$tempstr" -eq "2" ]
        then
            cp /odm/etc/wifi/bdwlan1.b1a /mnt/vendor/persist/bdwlan.bin
            echo "copied bdwlan1.b1a successfully" > /dev/kmsg
        else
            cp /odm/etc/wifi/bdwlan.b1a /mnt/vendor/persist/bdwlan.bin
            echo "copied bdwlan.b1a successfully" > /dev/kmsg
        fi
    #As per new logic hw mismatch case 18815 Inida 
    elif [ $rf_version = '3' ]
    then
        if [ "$tempstr" -eq "1" ]
        then
            cp /odm/etc/wifi/bdwlan0.b0i /mnt/vendor/persist/bdwlan.bin
            echo "copied bdwlan0.b0i successfully" > /dev/kmsg
        elif [ "$tempstr" -eq "2" ]
        then
            cp /odm/etc/wifi/bdwlan1.b0i /mnt/vendor/persist/bdwlan.bin
            echo "copied bdwlan1.b0i successfully" > /dev/kmsg
        else
            cp /odm/etc/wifi/bdwlan.b0i /mnt/vendor/persist/bdwlan.bin
            echo "copied bdwlan.b0i successfully" > /dev/kmsg
        fi
    fi
fi
#end
