import 'package:flutter/material.dart';
import 'package:flutter_base/app/utils/my_func.dart';
import 'package:flutter_base/config/fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData lightTheme = ThemeData(
    // ***** Color *****
    primaryColor: Color(0xff),
    primaryColorDark: Color(0xff),
    primaryColorLight: Color(0xff),
    canvasColor: Color(0xff),
    cardColor: Color(0xff),
    disabledColor: Color(0xff),
    dividerColor: Color(0xff),
    dialogBackgroundColor: Color(0xff),
    colorSchemeSeed: Color(0xff),
    hintColor: Color(0xff),
    focusColor: Color(0xff),
    highlightColor: Color(0xff),
    indicatorColor: Color(0xff),
    shadowColor: Color(0xff),
    splashColor: Color(0xff),
    scaffoldBackgroundColor: Color(0xff),
    secondaryHeaderColor: Color(0xff),
    hoverColor: Color(0xff),
    unselectedWidgetColor: Color(0xff),

    // *****  Others Color *****
    primarySwatch: MyFunc.createMaterialColor(const Color(0xff8A0051)),
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey)
        .copyWith(background: const Color(0xffFFFFFF)),

    // *****  brightness *****
    brightness: Brightness.light,
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
          color: Colors.green),
      labelMedium: TextStyle(
          fontFamily: Fonts.primary,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: Colors.green),
      labelSmall: TextStyle(
          fontFamily: Fonts.primary,
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
          color: Colors.green),

      //******  Body  ******
      bodyLarge: TextStyle(
          fontFamily: Fonts.primary,
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          color: Colors.green),
      bodyMedium: TextStyle(
          fontFamily: Fonts.primary,
          fontSize: 14.sp,
          fontWeight: FontWeight.w400),
      bodySmall: TextStyle(
          fontFamily: Fonts.primary,
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: Colors.green),
      //******  Title  ******
      titleLarge: TextStyle(
          fontFamily: Fonts.primary,
          fontSize: 20.sp,
          fontWeight: FontWeight.w600,
          color: Colors.green),
      titleMedium: TextStyle(
          fontFamily: Fonts.primary,
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
          color: Colors.green),
      titleSmall: TextStyle(
          fontFamily: Fonts.primary,
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
          color: Colors.green),
      //******  HeadLine  ******
      headlineLarge: TextStyle(
          fontFamily: Fonts.primary,
          fontSize: 36.sp,
          fontWeight: FontWeight.w600,
          color: Colors.green),
      headlineMedium: TextStyle(
          fontFamily: Fonts.primary,
          fontSize: 28.sp,
          fontWeight: FontWeight.w600,
          color: Colors.green),
      headlineSmall: TextStyle(
          fontFamily: Fonts.primary,
          fontSize: 24.sp,
          fontWeight: FontWeight.w600,
          color: Colors.green),
      //******  Display  ******
      displayLarge: TextStyle(
          fontFamily: Fonts.primary,
          fontSize: 36.sp,
          fontWeight: FontWeight.w700,
          color: Colors.green),
      displayMedium: TextStyle(
          fontFamily: Fonts.primary,
          fontSize: 28.sp,
          fontWeight: FontWeight.w700,
          color: Colors.green),
      displaySmall: TextStyle(
          fontFamily: Fonts.primary,
          fontSize: 24.sp,
          fontWeight: FontWeight.w700,
          color: Colors.green),
    ));
