import 'package:flutter/material.dart';

class NAGColors {
  static const nagPrimary = Color(0XffC6E545);
  static const nagPrimaryDark = Color(0Xff7AA600);
  static const nagDanger = Color(0XffD92020);
  static const nagBlack = Color(0Xff1D1D1F);
  static const nagGrey75 = Color(0Xff6D6E70);
  static const nagGrey50 = Color(0XffABAEB2);
  static const nagGrey25 = Color(0XffD7D8DB);
  static const nagGrey10 = Color(0XffEDEEF0);
  static const nagWhite = Color(0XffFFFFFF);

  static const nagTagsRed = Color(0XffD92121);
  static const nagTagsPink = Color(0XffD10857);
  static const nagTagsPurple = Color(0Xff851BB2);
  static const nagTagsDPurple = Color(0Xff4D24B2);
  static const nagTagsIndigo = Color(0Xff3043BF);
  static const nagTagsBlue = Color(0Xff0B79E5);
  static const nagTagsCyan = Color(0Xff00B1CC);
  static const nagTagsTeal = Color(0Xff009987);
  static const nagTagsGreen = Color(0Xff2E9933);
  static const nagTagsLGreen = Color(0Xff6BB22D);
  static const nagTagsLime = Color(0XffB9BF13);
  static const nagTagsYellow = Color(0XffFFBF1F);
  static const nagTagsAmber = Color(0XffF27B00);
  static const nagTagsOrange = Color(0XffE64A19);

  //template
  static const transparent = Colors.transparent;
  static const yellow = Color(0XffFFCA1C);
  static const dark = Colors.black;
  static const light = Colors.white;
  static const snackBarBG = Color(0XffA1CEF5);
  static const buttonHightlight = Color(0XFFE2EFFB);
  static const backgroundGrey = Color(0xffF7F7F7);
  static const lightGrey = Color(0xff646464);
  static const textGrey = Color(0xff8B8B8B);
  static const borderGrey = Color(0xffE3E3E3);
  static MaterialColor primary = getPrimaryMaterialColor();
  static MaterialColor orange = getMaterialOrangeColor();
  static const primaryDark = Color(0xff472A8F);
  static const primaryButton = Color(0xff551FC1);
  static const secondary = Color(0xffFF793A);
  static const green = Color(0xff62DDE1);
  static Color? disabled = Colors.grey[220];
  static const inputBackgroundPrimary = Color(0xffEEEEEE);
  static const inputPlaceholderPrimary = Color(0xff8B8B8B);
  static const inputBackgroundSecondary = Color(0xff653CA6);
  static const inputPlaceholderSecondary = Color(0xffB19ED3);
  static const otpBackground = Color(0xffD0C3E4);
  static const shadowColor = Color(0xffEEEEEE);
  static const pinkChart = Color(0xffFF3596);
  static const purpleChart = Color(0xff7935FF);
  static const greenChart = Color(0xff29D397);
  static MaterialColor neutral = getNeutralColor();
  static MaterialColor positive = getPositiveColor();
  static MaterialColor negative = getNegativeColor();
  static MaterialColor warning = getWarningColor();
  static const LinearGradient primaryGradient = LinearGradient(
    stops: [0.25, 1, 1.0],
    colors: [
      Color(0xff592D8B),
      Color(0xff9C4164),
      Color(0xffF37A41),
    ],
    begin: Alignment(-1, -1),
    end: Alignment(1, 1),
  );
  static const BoxShadow shadow = BoxShadow(
    color: shadowColor,
    blurRadius: 5,
    spreadRadius: 5,
    offset: Offset(0, 5),
  );
  static const BoxShadow cardShadow = BoxShadow(
    color: NAGColors.shadowColor,
    blurRadius: 1,
    spreadRadius: 1,
    offset: Offset(1, 1),
  );
  static const BoxShadow bottomShadow = BoxShadow(
    color: NAGColors.shadowColor,
    blurRadius: 5,
    spreadRadius: 3,
    offset: Offset(0, 1),
  );
}

MaterialColor getNeutralColor() {
  Map<int, Color> color = {
    100: const Color(0xffF2F2F3),
    200: const Color(0xffE5E4E7),
    300: const Color(0xffD3D2D7),
    400: const Color(0xffBEBCC4),
    500: const Color(0xff817E8C),
    600: const Color(0xff5D586C),
    700: const Color(0xff3E3851),
    800: const Color(0xff221A39),
  };
  return MaterialColor(0xffffffff, color);
}

MaterialColor getPrimaryMaterialColor() {
  Map<int, Color> color = {
    50: const Color(0xffF6F3FD),
    100: const Color(0xffEEE9F9),
    200: const Color(0xffD5C7F0),
    300: const Color(0xffAA8FE0),
    400: const Color(0xff7447CC),
    500: const Color(0xff551FC1),
    600: const Color(0xff44199A),
    700: const Color(0xff2A1060),
    800: const Color(0xff19093A),
  };
  return MaterialColor(0xff551FC1, color);
}

MaterialColor getMaterialOrangeColor() {
  Map<int, Color> color = {
    100: const Color(0xffFEF4F0),
    200: const Color(0xffFDE4D9),
    300: const Color(0xffFACAB3),
    400: const Color(0xffF7A983),
    500: const Color(0xffF37A41),
    600: const Color(0xffDA6F40),
    700: const Color(0xffA04F2D),
    800: const Color(0xff773A23),
  };
  return MaterialColor(0xff773A23, color);
}

MaterialColor getPositiveColor() {
  Map<int, Color> color = {
    100: const Color(0xffE4F8E9),
    500: const Color(0xff46CA6B),
    700: const Color(0xff318A4E),
    900: const Color(0xff1D5D35),
  };
  return MaterialColor(0xff46CA6B, color);
}

MaterialColor getWarningColor() {
  const Map<int, Color> color = {
    100: Color(0xffFDF1DA),
    500: Color(0xffEFB443),
    700: Color(0xffB18333),
    900: Color(0xff68491A),
  };
  return const MaterialColor(0xffEFB443, color);
}

MaterialColor getNegativeColor() {
  Map<int, Color> color = {
    100: const Color(0xffFAE7EC),
    500: const Color(0xffD0375C),
    700: const Color(0xff9A2847),
    900: const Color(0xff64132C),
  };
  return MaterialColor(0xffD0375C, color);
}
