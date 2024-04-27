## App Rename
Install Rename pkg
```cmd
flutter pub global activate rename
```

Change App Name
```cmd
rename setAppName --targets ios,android --value "YourAppName"
```

Change Application Id
```cmd
rename setBundleId --targets android --value "com.example.bundleId"
```
</br></br></br>

## Add flutter_native_splash
Install pkg
```cmd
flutter pub add flutter_native_splash
```

Add this code in pubspec.yaml
```cmd
flutter_native_splash:
  android: true
  ios: true
  web: false
  color: "#0089FF"
  image: assets/logos/splash_logo.png

  android_12:
    color: "#0089FF"
    image: assets/logos/splash_logo.png
```

Add main.dart
```cmd
  //Native Splash
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Future.delayed(const Duration(seconds: 2));
  FlutterNativeSplash.remove();

```

Run for Build
```cmd
dart run flutter_native_splash:create
```



</br></br></br>

## Change App Icon
[Generate icon](https://icon.kitchen/) [Adaptive icons details](https://developer.android.com/develop/ui/views/launch/icon_design_adaptive)

Add pkg and config
```cmd
dev_dependencies:
  flutter_launcher_icons: "^0.13.1"

flutter_launcher_icons:
  android: "launcher_icon"
  ios: true
  image_path: "assets/icon/icon.png"
  min_sdk_android: 21
  adaptive_icon_background: "#236AFD"
  adaptive_icon_foreground: "assets/logos/app_icon.png" 
```

Run for Build
```cmd
flutter pub run flutter_launcher_icons
```

</br></br></br>

## Sign the app
[Sign the app](https://docs.flutter.dev/deployment/android)


## App Build
```
flutter build appbundle --build-name=2.4.2 --build-number=10
```
