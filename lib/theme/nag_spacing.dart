import 'package:flutter/material.dart';

class NAGSpacing {
  static const xxs = 2.0;
  static const xs = 4.0;
  static const small = 8.0;
  static const medium = 12.0;
  static const large = 16.0;
  static const xl = 24.0;
  static const xxl = 32.0;
  static const xxxl = 48.0;

  static const main = large;
  static const radiusXXSm = 2.0;
  static const radiusXSm = 4.0;
  static const radiusSm = 6.0;
  static const radius = 8.0;
  static const radiusLarge = 16.0;
  static const radiusXLarge = 20.0;

  static const bottomSheetRadius = BorderRadius.vertical(
    top: Radius.circular(radiusLarge),
  );
  static final allRadiusXLarge = BorderRadius.circular(radiusXLarge);
  static final allRadiusLarge = BorderRadius.circular(radiusLarge);
  static final allRadius = BorderRadius.circular(radius);
  static final allRadiusSmall = BorderRadius.circular(radiusSm);
  static final allRadiusXSmall = BorderRadius.circular(radiusXSm);
  static final allRadiusXXSmall = BorderRadius.circular(radiusXXSm);
  static final allRadiusRound = BorderRadius.circular(90);
  static final allRadiusMedium = BorderRadius.circular(medium);
  static const paddingAllMain = EdgeInsets.all(main);
  static const paddingAllXxl = EdgeInsets.all(xxl);
  static const paddingSecondary = EdgeInsets.symmetric(
    vertical: medium,
    horizontal: main,
  );

  static const paddingAllMedium = EdgeInsets.symmetric(
    vertical: medium,
    horizontal: medium,
  );
  static const paddingAllSmall = EdgeInsets.symmetric(
    vertical: small,
    horizontal: small,
  );
  static const paddingVerticalMain = EdgeInsets.symmetric(
    vertical: main,
  );
  static const paddingVerticalMedium = EdgeInsets.symmetric(
    vertical: medium,
  );
  static const paddingHorizontalMain = EdgeInsets.symmetric(
    horizontal: main,
  );
  static const paddingHorizontalMedium = EdgeInsets.symmetric(
    horizontal: medium,
  );
  static const paddingHorizontalSmall = EdgeInsets.symmetric(
    horizontal: small,
  );
  static const paddingHorizontalXSmall = EdgeInsets.symmetric(
    horizontal: xs,
  );
  static const paddingHorizontalXxl = EdgeInsets.symmetric(
    horizontal: xxl,
  );
  static const paddingAllCustom = EdgeInsets.fromLTRB(
    main,
    small,
    main,
    main,
  );
}
