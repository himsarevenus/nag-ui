part of 'index.dart';

class NAGLinkButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;
  final TextStyle? textStyle;
  final bool isDisabled;
  final double? height;
  final bool noSpacing;
  final Color? activeColor;

  const NAGLinkButton(
    this.label, {
    required this.onPressed,
    this.textStyle = NAGBoldText.body1,
    this.isDisabled = false,
    this.height = 40,
    this.noSpacing = false,
    this.activeColor,
    Key? key,
  }) : super(key: key);

  const NAGLinkButton.medium(
    this.label, {
    required this.onPressed,
    this.textStyle = NAGMediumText.body2,
    this.isDisabled = false,
    this.height = 32,
    this.noSpacing = false,
    this.activeColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: noSpacing
            ? EdgeInsets.zero
            : const EdgeInsets.symmetric(horizontal: NAGSpacing.main),
        height: height,
        child: Align(
          alignment: Alignment.center,
          child: Text(
            label,
            style: textStyle?.toggleColor(
              !isDisabled,
              active: activeColor ?? NAGColors.secondary,
              inactive: NAGColors.neutral.shade400,
            ),
          ),
        ),
      ),
    );
  }
}
