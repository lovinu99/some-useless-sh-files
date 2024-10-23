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

pm uninstall -k --user 0 com.android.bookmarkprovider
pm uninstall -k --user 0 com.android.dreams.basic
pm uninstall -k --user 0 com.android.dreams.phototable
pm uninstall -k --user 0 com.android.egg
pm uninstall -k --user 0 com.android.hotwordenrollment.okgoogle
pm uninstall -k --user 0 com.android.hotwordenrollment.xgoogle
pm uninstall -k --user 0 com.android.wallpaper.livepicker
pm uninstall -k --user 0 com.android.providers.partnerbookmarks
pm uninstall -k --user 0 com.android.vpndialogs
pm uninstall -k --user 0 com.google.mainline.adservices
pm uninstall -k --user 0 com.google.android.adservices.api
pm uninstall -k --user 0 com.google.android.apps.photos
pm uninstall -k --user 0 com.google.android.apps.tachyon
pm uninstall -k --user 0 com.google.android.feedback
pm uninstall -k --user 0 com.google.android.googlequicksearchbox
pm uninstall -k --user 0 com.google.android.marvin.talkback
pm uninstall -k --user 0 com.google.android.printservice.recommendation
pm uninstall -k --user 0 com.google.android.syncadapters.calendar
pm uninstall -k --user 0 com.google.android.tts
pm uninstall -k --user 0 com.google.android.apps.youtube.music
pm uninstall -k --user 0 com.google.ar.core
pm uninstall -k --user 0 com.sec.android.app.shealth
pm uninstall -k --user 0 com.samsung.android.arzone
pm uninstall -k --user 0 com.sec.android.app.samsungapps
pm uninstall -k --user 0 com.samsung.android.dynamiclock
pm uninstall -k --user 0 com.samsung.android.tvplus
pm uninstall -k --user 0 com.samsung.android.app.watchmanagerstub
pm uninstall -k --user 0 com.samsung.android.app.watchmanager
pm uninstall -k --user 0 com.samsung.android.waterplugin
pm uninstall -k --user 0 com.samsung.android.accessibility.talkback
pm uninstall -k --user 0 com.sec.android.app.sbrowser
pm uninstall -k --user 0 com.sec.android.easyMover.Agent
pm uninstall -k --user 0 com.samsung.android.oneconnect
pm uninstall -k --user 0 com.samsung.android.voc
pm uninstall -k --user 0 com.samsung.android.app.dressroom
pm uninstall -k --user 0 com.samsung.android.scloud
pm uninstall -k --user 0 com.samsung.android.sdk.handwriting
pm uninstall -k --user 0 com.samsung.android.universalswitch
pm uninstall -k --user 0 com.samsung.safetyinformation
pm uninstall -k --user 0 com.samsung.storyservice
pm uninstall -k --user 0 com.samsung.android.service.aircommand
pm uninstall -k --user 0 com.samsung.android.service.peoplestripe
pm uninstall -k --user 0 com.samsung.android.app.appsedge
pm uninstall -k --user 0 com.sec.android.dexsystemui
pm uninstall -k --user 0 com.sec.android.desktopmode.uiservice
pm uninstall -k --user 0 com.sec.android.app.desktoplauncher
```
