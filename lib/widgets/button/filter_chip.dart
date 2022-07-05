part of 'index.dart';

class NAGFilterChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback? onTap;
  final Widget? icon;
  final Widget? prefixIcon;

  /// Default text style for unselected chip
  final TextStyle textStyle;

  /// Selected chip will use this textstyle
  final TextStyle selectedTextStyle;

  /// Force button disabled
  final bool isDisabled;

  /// If [withRemoveIcon] is [True]
  /// Selected chip color will not changed
  /// And will have a remove icon trailing
  final bool withRemoveIcon;

  final double borderRadius;
  final double horizontalPadding;
  final double verticalPadding;

  final bool outline;

  final Color? backgroundColor;

  const NAGFilterChip({
    Key? key,
    required this.label,
    required this.isSelected,
    this.onTap,
    this.icon,
    this.prefixIcon,
    this.textStyle = NAGRegularText.body2,
    this.selectedTextStyle = NAGMediumText.body2,
    this.borderRadius = 26,
    this.horizontalPadding = NAGSpacing.medium,
    this.isDisabled = false,
    this.withRemoveIcon = false,
    this.verticalPadding = 8,
    this.outline = false,
    this.backgroundColor,
  }) : super(key: key);

  const NAGFilterChip.small({
    required this.label,
    required this.isSelected,
    this.onTap,
    this.icon,
    this.prefixIcon,
    this.textStyle = NAGRegularText.caption1,
    this.selectedTextStyle = NAGMediumText.caption1,
    this.borderRadius = 26,
    this.horizontalPadding = NAGSpacing.medium,
    this.isDisabled = false,
    this.withRemoveIcon = false,
    this.verticalPadding = 7,
    this.outline = false,
    this.backgroundColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final changeToActiveColor = isSelected && !withRemoveIcon;
    return InkWell(
      onTap: isDisabled ? null : onTap,
      borderRadius: BorderRadius.circular(borderRadius),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding,
          vertical: verticalPadding,
        ),
        decoration: BoxDecoration(
          color: changeToActiveColor
              ? NAGColors.primary.shade500
              : backgroundColor ?? NAGColors.neutral.shade100,
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(
              color: outline && !isSelected
                  ? NAGColors.neutral.shade700
                  : NAGColors.light,
              width: 1)
          // : null
          ,
        ),
        child: (icon == null && prefixIcon == null && !withRemoveIcon)
            ? Text(
                label,
                style: changeToActiveColor
                    ? selectedTextStyle.light
                    : textStyle.neutral70,
                textAlign: TextAlign.center,
              )
            : Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                // : MainAxisSize.min,
                children: [
                  if (prefixIcon != null) prefixIcon!,
                  if (prefixIcon != null) const NAGSizedBox.widthSmall(),
                  Text(
                    label,
                    style: changeToActiveColor
                        ? selectedTextStyle.light
                        : textStyle.neutral70,
                  ),
                  if (icon != null || withRemoveIcon)
                    const NAGSizedBox.widthSmall(),
                  if (icon != null) icon!,
                  if (withRemoveIcon && isSelected)
                    Icon(
                      Icons.close,
                      color: NAGColors.neutral.shade400,
                      size: 16,
                    )
                ],
              ),
      ),
    );
  }
}
