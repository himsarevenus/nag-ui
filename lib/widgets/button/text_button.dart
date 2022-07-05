part of 'index.dart';

class NAGTextButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;
  final TextStyle? textStyle;
  final bool isDisabled;
  final bool noSpacing;
  final Color? activeColor;
  final bool withUnderline;

  const NAGTextButton(
    this.label, {
    required this.onPressed,
    this.textStyle = NAGMediumText.caption1,
    this.isDisabled = false,
    this.noSpacing = false,
    this.activeColor = NAGColors.primaryButton,
    this.withUnderline = false,
    Key? key,
  }) : super(key: key);

  const NAGTextButton.black(
    this.label, {
    required this.onPressed,
    this.textStyle = NAGMediumText.body2,
    this.isDisabled = false,
    this.noSpacing = false,
    this.activeColor,
    this.withUnderline = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Text(
        label,
        style: textStyle
            ?.toggleColor(
              !isDisabled,
              active: activeColor ?? NAGColors.neutral.shade600,
              inactive: NAGColors.neutral.shade400,
            )
            .copyWith(
              decoration: withUnderline ? TextDecoration.underline : null,
            ),
      ),
    );
  }
}
