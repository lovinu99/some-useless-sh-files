# Uninstall Bloatware on samsung.

    > https://technastic.com/freeze-uninstall-system-apps-android/

## 1. Launch PowerShell with the path of the ‘platform-tools‘ folder as described above.
Connect your Android device to the computer and execute the following command.

    > adb shell

To uninstall an app with its data

    pm uninstall --user 0 <package-name>

    
To uninstall an app but keep its data

    pm uninstall -k --user 0 <package-name>

## 2. select packages
    > https://technastic.com/remove-samsung-bloatware-safe-to-remove-apps/#samsung-pay--samsung-pass

example
```
pm uninstall --user 0 com.samsung.android.kidsinstaller
pm uninstall --user 0 com.samsung.android.app.camera.sticker.facearavatar.preload
pm uninstall --user 0 com.samsung.android.aremoji
pm uninstall --user 0 com.sec.android.mimage.avatarstickers
pm uninstall --user 0 com.samsung.android.aremojieditor
pm uninstall --user 0 com.samsung.android.stickercenter
pm uninstall --user 0 com.samsung.android.samsungpass
pm uninstall --user 0 com.samsung.android.spay
pm uninstall --user 0 com.samsung.android.spayfw
pm uninstall --user 0 com.samsung.android.da.daagent
pm uninstall --user 0 com.google.android.apps.youtube.music
pm uninstall --user 0 com.google.ar.core
pm uninstall --user 0 com.samsung.android.app.settings.bixby
pm uninstall --user 0 com.samsung.android.bixby.wakeup
pm uninstall --user 0 com.samsung.android.bixby.agent
pm uninstall --user 0 com.samsung.android.bixbyvision.framework
pm uninstall --user 0 com.samsung.android.arzone
pm uninstall --user 0 com.samsung.android.tvplus
pm uninstall --user 0 com.samsung.android.voc
pm uninstall --user 0 com.samsung.android.scloud
pm uninstall --user 0 com.samsung.android.sdk.handwriting
```
