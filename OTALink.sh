adb_binary="adb"
echo "Plug in your device"
echo "and make sure adb debugging is enabled"
echo " "
$adb_binary devices
echo " "
echo "If you see your device listed, press enter to start logging"; read
echo "Check for updates now"
$adb_binary logcat | grep "packages/ota-api"