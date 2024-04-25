import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_base/app/services/controller/config_controller.dart';
import 'package:flutter_base/config/dark_theme.dart';
import 'package:flutter_base/config/light_theme.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'app/services/base/api_service.dart';
import 'app/services/base/dio_interceptor.dart';
import 'app/services/base/preferences.dart';
import 'app/services/bindings/base_binding.dart';
import 'app/routes/app_pages.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  //Native Splash
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Future.delayed(const Duration(seconds: 2));
  FlutterNativeSplash.remove();

  /// mobile orientation off
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  // Status Bar Color
  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //   statusBarColor: kPrimaryColor,
  //   statusBarIconBrightness: Brightness.light,
  // ));

  /// Shared Preferences
  await Preferences.init();

  /// Initialize the dio
  final dio = Dio();

  // Initialize the dio instance
  dio.interceptors.add(DioInterceptor());

  /// Add the dio instance to the api service
  // final apiService = ApiService(dio: dio);
  // Get.put(ConfigController());

  /// Add the dio instance to the bindings
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key,});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(430, 932),
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            defaultTransition: Transition.cupertino,
            transitionDuration: const Duration(milliseconds: 500),
            title: 'flutter base',
            theme: lightTheme,
            darkTheme: darkTheme,
            initialBinding: BaseBinding(
              
            ),
            initialRoute: AppPages.INITIAL,
            // initialRoute: Routes.SIGN_IN,
            getPages: AppPages.routes,
          );
        });
  }
}
