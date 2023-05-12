import 'package:flutter/material.dart';
import 'package:nag_ui/nag_ui.dart';

ThemeData getAppTheme(BuildContext _) {
  return ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: NAGColors.primary,
    primarySwatch: getPrimaryMaterialColor(),
    fontFamily: 'CircularXXTT',
    buttonTheme: ButtonThemeData(
      buttonColor: NAGColors.secondary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      iconTheme: IconThemeData(
        color: NAGColors.neutral.shade800,
      ),
    ),
    textTheme: TextTheme(
      bodyMedium: NAGRegularText.body2.neutral70,
    ),
    dividerTheme: DividerThemeData(
      color: NAGColors.neutral.shade200,
      thickness: 1,
    ),
  );
}
