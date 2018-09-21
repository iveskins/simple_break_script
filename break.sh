#! /bin/bash
while true
do
    POWER_STATE=$(ioreg -n IODisplayWrangler | grep -i IOPowerManagement | sed 's/.*"CurrentPowerState"=\([0-9]\).*/\1/')
    if [ $POWER_STATE -eq 4 ]
    then
        osascript break.scpt
    fi
    sleep 600
done
