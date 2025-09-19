if ($args[0]) {
    node.exe node_modules\web-ext\bin\web-ext.js run --config=config.mjs --target=firefox-android --android-device=$args[0]
} else {
    Write-Host -ForegroundColor red "USAGE: run-android.ps1 <HOST:PORT>"
    Write-Host -ForegroundColor yellow "HOST:PORT -- remote ADB device"
}