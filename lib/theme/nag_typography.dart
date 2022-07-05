import 'package:flutter/material.dart';
import 'package:nag_ui/theme/nag_colors.dart';

class NAGRegularText {
  static const TextStyle body1 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    height: 20 / 16,
  );

  static const TextStyle body2 = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 14,
    height: 16 / 14,
  );

  static const TextStyle caption1 = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 12,
    height: 12 / 12,
  );

  static const TextStyle caption2 = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 10,
    height: 12 / 10,
  );

  static const TextStyle header1 = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 50,
    height: 60 / 50,
  );

  static const TextStyle header2 = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 36,
    height: 44 / 36,
  );

  static const TextStyle header3 = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 28,
    height: 36 / 28,
  );

  static const TextStyle header4 = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 20,
    height: 28 / 20,
  );
  static const TextStyle header5 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 18,
    height: 24 / 18,
  );
}

class NAGMediumText {
  static const TextStyle body1 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    height: 20 / 16,
  );

  static const TextStyle body2 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    height: 16 / 14,
  );

  static const TextStyle caption1 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 12,
    height: 12 / 12,
  );

  static const TextStyle caption2 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 10,
    height: 10 / 10,
  );

  static const TextStyle header1 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 50,
    height: 60 / 50,
  );

  static const TextStyle header2 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 36,
    height: 44 / 36,
  );

  static const TextStyle header3 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 28,
    height: 36 / 28,
  );

  static const TextStyle header4 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 20,
    height: 28 / 20,
  );
  static const TextStyle header5 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 18,
    height: 24 / 18,
  );
}

class NAGBoldText {
  static const TextStyle body1 = TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 16,
    height: 20 / 16,
  );

  static const TextStyle body2 = TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 14,
    height: 16 / 14,
  );

  static const TextStyle caption1 = TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 12,
    height: 12 / 12,
  );

  static const TextStyle caption2 = TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 10,
    height: 14 / 10,
  );

  static const TextStyle header1 = TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 50,
    height: 60 / 50,
  );

  static const TextStyle header2 = TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 36,
    height: 44 / 36,
  );

  static const TextStyle header3 = TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 28,
    height: 36 / 28,
  );

  static const TextStyle header4 = TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 20,
    height: 28 / 20,
  );
  static const TextStyle header5 = TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 18,
    height: 24 / 18,
  );
}

extension TextStyling on TextStyle {
  TextStyle get black => copyWith(
        color: Colors.black,
      );
  TextStyle get white => copyWith(
        color: Colors.white,
      );
  TextStyle get neutral80 => copyWith(
        color: NAGColors.neutral.shade800,
      );
  TextStyle get neutral70 => copyWith(
        color: NAGColors.neutral.shade700,
      );
  TextStyle get neutral60 => copyWith(
        color: NAGColors.neutral.shade600,
      );
  TextStyle get neutral50 => copyWith(
        color: NAGColors.neutral.shade500,
      );
  TextStyle get neutral40 => copyWith(
        color: NAGColors.neutral.shade400,
      );
  TextStyle get neutral20 => copyWith(
        color: NAGColors.neutral.shade200,
      );
  TextStyle get red50 => copyWith(
        color: NAGColors.negative.shade500,
      );
  TextStyle get red70 => copyWith(
        color: NAGColors.negative.shade700,
      );
  TextStyle get red90 => copyWith(
        color: NAGColors.negative.shade900,
      );
  TextStyle get red90HalfOpacity =>
      copyWith(color: NAGColors.negative.shade900.withOpacity(0.5));
  TextStyle get positive90 => copyWith(
        color: NAGColors.positive.shade900,
      );
  TextStyle get positive90HalfOpacity => copyWith(
        color: NAGColors.positive.shade900.withOpacity(0.5),
      );
  TextStyle get positive70 => copyWith(
        color: NAGColors.positive.shade700,
      );
  TextStyle get warning90 => copyWith(
        color: NAGColors.warning.shade900,
      );
  TextStyle get warning70 => copyWith(
        color: NAGColors.warning.shade700,
      );
  TextStyle get purple50 => copyWith(
        color: NAGColors.primary.shade500,
      );
  TextStyle get purple60 => copyWith(
        color: NAGColors.primary.shade600,
      );
  TextStyle get purple70 => copyWith(
        color: NAGColors.primary.shade700,
      );
  TextStyle get grey => copyWith(
        color: NAGColors.textGrey,
      );
  TextStyle get primary => copyWith(
        color: NAGColors.primary,
      );
  TextStyle get secondary => copyWith(
        color: NAGColors.secondary,
      );
  TextStyle get orange80 => copyWith(
        color: NAGColors.orange.shade800,
      );
  TextStyle get green => copyWith(
        color: NAGColors.green,
      );
  TextStyle get light => copyWith(
        color: NAGColors.light,
      );
  TextStyle get dark => copyWith(
        color: NAGColors.dark,
      );
  TextStyle toggleColor(
    bool? condition, {
    Color? active,
    Color? inactive,
  }) =>
      copyWith(
        color: condition! ? active : inactive,
      );
}
