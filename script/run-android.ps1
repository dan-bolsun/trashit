
# adb.exe pair 192.168.100.4:.....
# adb.exe connect 192.168.100.4:.....

if ($args[0]) {
    node.exe node_modules\web-ext\bin\web-ext.js run --config=config.mjs --adb-bin=X:\tool\platform-tools\adb.exe --target=firefox-android --android-device=$args[0]
} else {
    Write-Host -ForegroundColor red "Please specify ADB host:port"
}