adb_binary="adb"
echo "Plug in your device"
echo "and make sure adb debugging is enabled"
echo " "
$adb_binary devices
echo " "
echo "If you see your device listed, press enter to start logging"; read
echo "Check for updates now"
id=`$adb_binary shell getprop ro.build.display.id`
ver=${id:2:2}
if [ ver == "CN" ]; then
   $adb_binary logcat | grep "ota-filesite.c2dms.com/SWUpdate"
else   
   $adb_binary logcat | grep "packages/ota-api"
fi   
   
