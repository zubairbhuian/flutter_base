import 'package:flutter/material.dart';
import 'package:flutter_base/app/utils/my_func.dart';
import 'package:flutter_base/config/fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData darkTheme = ThemeData(
    primaryColor: Colors.purple,
    primaryColorDark: null,
    primaryColorLight: null,
    canvasColor: Colors.white,
    cardColor: Colors.black,
    disabledColor: null,
    dividerColor: null,
    dialogBackgroundColor: null,
    colorSchemeSeed: null,
    hintColor: null,
    focusColor: null,
    highlightColor: null,
    indicatorColor: null,
    shadowColor: null,
    splashColor: null,
    scaffoldBackgroundColor: null,
    secondaryHeaderColor: null,
    hoverColor: null,
    unselectedWidgetColor: null,
    // *****  Others Color *****
    primarySwatch: MyFunc.createMaterialColor(const Color(0xff8A0051)),
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey)
        .copyWith(background: const Color(0xffFFFFFF)),

    // *****  brightness *****
    brightness: Brightness.dark,
    // ****** Font Family ******
    fontFamily: Fonts.primary,
    // ****** Card Theme ******
    cardTheme: const CardTheme(
        color: Colors.amberAccent,
        shadowColor: null,
        surfaceTintColor: null,
        margin: null,
        shape: null,
        elevation: null),
    // ****** Text Theme ******
    textTheme: TextTheme(
      //******  Label  ******
      labelLarge: TextStyle(
          fontFamily: Fonts.primary,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: Colors.red),
      labelMedium: TextStyle(
          fontFamily: Fonts.primary,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: Colors.red),
      labelSmall: TextStyle(
          fontFamily: Fonts.primary,
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
          color: Colors.red),

      //******  Body  ******
      bodyLarge: TextStyle(
          fontFamily: Fonts.primary,
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          color: Colors.red),
      bodyMedium: TextStyle(
          fontFamily: Fonts.primary,
          fontSize: 14.sp,
          fontWeight: FontWeight.w400),
      bodySmall: TextStyle(
          fontFamily: Fonts.primary,
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: Colors.red),
      //******  Title  ******
      titleLarge: TextStyle(
          fontFamily: Fonts.primary,
          fontSize: 20.sp,
          fontWeight: FontWeight.w600,
          color: Colors.red),
      titleMedium: TextStyle(
          fontFamily: Fonts.primary,
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
          color: Colors.red),
      titleSmall: TextStyle(
          fontFamily: Fonts.primary,
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
          color: Colors.red),
      //******  HeadLine  ******
      headlineLarge: TextStyle(
          fontFamily: Fonts.primary,
          fontSize: 36.sp,
          fontWeight: FontWeight.w600,
          color: Colors.red),
      headlineMedium: TextStyle(
          fontFamily: Fonts.primary,
          fontSize: 28.sp,
          fontWeight: FontWeight.w600,
          color: Colors.red),
      headlineSmall: TextStyle(
          fontFamily: Fonts.primary,
          fontSize: 24.sp,
          fontWeight: FontWeight.w600,
          color: Colors.red),
      //******  Display  ******
      displayLarge: TextStyle(
          fontFamily: Fonts.primary,
          fontSize: 36.sp,
          fontWeight: FontWeight.w700,
          color: Colors.red),
      displayMedium: TextStyle(
          fontFamily: Fonts.primary,
          fontSize: 28.sp,
          fontWeight: FontWeight.w700,
          color: Colors.red),
      displaySmall: TextStyle(
          fontFamily: Fonts.primary,
          fontSize: 24.sp,
          fontWeight: FontWeight.w700,
          color: Colors.red),
    ));
