part of 'index.dart';

extension NAGWidgetUtils on Widget {
  Container bottomActionWrapper({
    bool withoutShadow = false,
  }) =>
      Container(
        padding: NAGSpacing.paddingAllMain,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: withoutShadow ? null : [NAGColors.bottomShadow],
        ),
        child: this,
      );

  Container bottomSheetWrapper({
    Radius radius = const Radius.circular(12),
    EdgeInsets padding = NAGSpacing.paddingAllMain,
  }) =>
      Container(
        decoration: BoxDecoration(
          color: NAGColors.light,
          borderRadius: BorderRadius.vertical(
            top: radius,
          ),
        ),
        padding: padding,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            this,
          ],
        ),
      );
  Container shadowCardWrapper({
    bool withoutShadow = false,
    bool lastItem = false,
  }) =>
      Container(
        margin: EdgeInsets.only(bottom: lastItem ? 0 : NAGSpacing.main),
        padding: NAGSpacing.paddingAllMedium,
        decoration: BoxDecoration(
          boxShadow: const [NAGColors.cardShadow],
          borderRadius: NAGSpacing.allRadius,
          color: NAGColors.light,
        ),
        child: this,
      );
}
