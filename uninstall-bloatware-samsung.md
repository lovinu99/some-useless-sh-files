# Uninstall Bloatware on samsung.

    > https://technastic.com/freeze-uninstall-system-apps-android/
## Get ADB
    https://developer.android.com/tools/releases/platform-tools?hl=vi
download then extract, open cmd at the same folder

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

pm uninstall -k --user all com.android.bookmarkprovider  # Bookmark Provider
pm uninstall -k --user all com.android.dreams.basic  # Basic Screensaver (Daydream)
pm uninstall -k --user all com.android.dreams.phototable  # Photo Screensaver (Daydream)
pm uninstall -k --user all com.android.egg  # Android Easter Egg
pm uninstall -k --user all com.android.hotwordenrollment.okgoogle  # OK Google Enrollment
pm uninstall -k --user all com.android.hotwordenrollment.xgoogle  # Google Assistant Enrollment
pm uninstall -k --user all com.android.wallpaper.livepicker  # Live Wallpaper Picker
pm uninstall -k --user all com.android.providers.partnerbookmarks  # Partner Bookmarks Provider
pm uninstall -k --user all com.android.vpndialogs  # VPN Dialogs
pm uninstall -k --user all com.google.mainline.adservices  # Google Ad Services
pm uninstall -k --user all com.google.android.adservices.api  # Google Ad Services API
pm uninstall -k --user all com.google.android.apps.photos  # Google Photos
pm uninstall -k --user all com.google.android.apps.tachyon  # Google Duo (Meet)
pm uninstall -k --user all com.google.android.feedback  # Google Feedback
pm uninstall -k --user all com.google.android.googlequicksearchbox  # Google Search / Assistant
pm uninstall -k --user all com.google.android.marvin.talkback  # Google TalkBack (Accessibility)
pm uninstall -k --user all com.google.android.printservice.recommendation  # Default Print Service
pm uninstall -k --user all com.google.android.syncadapters.calendar  # Google Calendar Sync
pm uninstall -k --user all com.google.android.tts  # Google Text-to-Speech
pm uninstall -k --user all com.google.android.apps.youtube.music  # YouTube Music
pm uninstall -k --user all com.google.ar.core  # Google ARCore
pm uninstall -k --user all com.sec.android.app.shealth  # Samsung Health
pm uninstall -k --user all com.samsung.android.arzone  # AR Zone
pm uninstall -k --user all com.sec.android.app.samsungapps  # Galaxy Store
pm uninstall -k --user all com.samsung.android.dynamiclock  # Dynamic Lock Screen
pm uninstall -k --user all com.samsung.android.tvplus  # Samsung TV Plus
pm uninstall -k --user all com.samsung.android.app.watchmanagerstub  # Samsung Watch Manager Stub
pm uninstall -k --user all com.samsung.android.app.watchmanager  # Samsung Watch Manager
pm uninstall -k --user all com.samsung.android.waterplugin  # Water Plugin (Edge Panel)
pm uninstall -k --user all com.samsung.android.accessibility.talkback  # Samsung TalkBack
pm uninstall -k --user all com.sec.android.app.sbrowser  # Samsung Internet Browser
pm uninstall -k --user all com.sec.android.easyMover.Agent  # Samsung Smart Switch
pm uninstall -k --user all com.samsung.android.oneconnect  # SmartThings
pm uninstall -k --user all com.samsung.android.voc  # Samsung Members (Customer Support)
pm uninstall -k --user all com.samsung.android.scloud  # Samsung Cloud
pm uninstall -k --user all com.samsung.android.sdk.handwriting  # Samsung Handwriting SDK
pm uninstall -k --user all com.samsung.android.universalswitch  # Universal Switch (Accessibility)
pm uninstall -k --user all com.samsung.safetyinformation  # Samsung Safety Information
pm uninstall -k --user all com.samsung.storyservice  # Samsung Story Service
pm uninstall -k --user all com.samsung.android.service.aircommand  # Air Command (S Pen Feature)
pm uninstall -k --user all com.samsung.android.service.peoplestripe  # People Edge (Edge Panel)
pm uninstall -k --user all com.samsung.android.app.appsedge  # Apps Edge (Edge Panel)
pm uninstall -k --user all com.sec.android.dexsystemui  # Samsung DeX System UI
pm uninstall -k --user all com.sec.android.desktopmode.uiservice  # Samsung DeX Mode Service
pm uninstall -k --user all com.sec.android.app.desktoplauncher  # Samsung DeX Launcher
pm uninstall -k --user all com.samsung.android.bixby.agent  # Bixby Voice
pm uninstall -k --user all com.facebook.appmanager  # Facebook App Manager
pm uninstall -k --user all com.google.android.projection.gearhead
pm uninstall -k --user all com.samsung.android.app.simplesharing
pm uninstall -k --user all com.samsung.android.scloud
pm uninstall -k --user all com.sec.android.app.samsungapps
pm uninstall -k --user all com.samsung.android.avatar.avatarprovider
pm uninstall -k --user all com.sec.android.mimage.avatarstickers
pm uninstall -k --user all com.samsung.android.kidsinstaller
pm uninstall -k --user all com.samsung.android.kidsmode
pm uninstall -k --user all com.samsung.android.samsungpass
pm uninstall -k --user all com.samsung.android.spay
pm uninstall -k --user all com.samsung.android.app.camera.sticker.stamp.preload
pm uninstall -k --user all com.sec.android.app.billing
```

in case get error : 
        > Failure [DELETE_FAILED_INTERNAL_ERROR]

try replace '--user all' with '--user 0'
