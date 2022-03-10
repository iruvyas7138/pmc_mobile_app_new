import 'dart:ui';

import 'package:flutter/material.dart';

///Colors

const ColorBlueblue = const Color(0XFF29ABE2);
const ColorBlue = const Color(0XFF0278AE);
const ColorDarkBlue = const Color(0XFF2495C4);
const ColorLightBlue = const Color(0XFF2495C2);
const ColorHighlightBlue = const Color(0XFF26A0D4);
const ColorBlack = const Color(0XFF414A53); //TODO: Fix by later in theme
const BluishGrey = const Color(0XFF9096AF);
const DarkBluishGrey = const Color(0XFF263238);
const ColorRed = const Color(0XFFE22929);
const ColorYellow = const Color(0XFFE2A329);
const ColorEffect = const Color(0XFFF0F2F8);
const whiteColor = const Color(0xFFFFFFFF);

final ThemeData appTheme = _buildAppTheme();

ThemeData _buildAppTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
      brightness: Brightness.light,
      backgroundColor: whiteColor,
      textTheme: _appTextTheme(base.textTheme),
      buttonTheme: _appButtonTheme(base.buttonTheme));
}

TextTheme _appTextTheme(TextTheme base) {
  return base.copyWith(
    subtitle1: base.headline1?.copyWith(
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
        color: ColorBlack),
    subtitle2: base.headline2?.copyWith(
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w400,
        // fontStyle: FontStyle.normal,
        fontSize: 18.0,
        color: ColorBlack),
    headline3: base.headline3?.copyWith(
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w400,
        // fontStyle: FontStyle.normal,
        fontSize: 20.0,
        color: ColorBlack),
    headline4: base.headline4?.copyWith(
      fontFamily: "Montserrat",
      // fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w700,
      fontSize: 18.0,
    ),
    headline5: base.headline5?.copyWith(
      fontFamily: "Montserrat",
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      fontSize: 14.0,
    ),
    headline6: base.headline6?.copyWith(
      fontFamily: "Montserrat",
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      fontSize: 15.0,
    ));
}

ButtonThemeData _appButtonTheme(ButtonThemeData base) {
  return base.copyWith(buttonColor: ColorBlueblue, textTheme: ButtonTextTheme.accent
    // backgroundColor: whiteColor,
    //   fontFamily: "Montserrat",
    //   fontStyle: FontStyle.normal,
    //   fontWeight: FontWeight.w500,
    //   fontSize: 14.0,
    //   color: whiteColor
  );
}
