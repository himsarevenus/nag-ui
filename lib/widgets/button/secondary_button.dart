part of 'index.dart';

class NAGOutlineButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;
  final double? height;
  final Color? textColor;
  final Color borderColor;
  final Color backgroundColor;
  final TextStyle? textStyle;
  final Widget? icon;
  final BorderRadiusGeometry? radius;
  final double? borderWidth;

  const NAGOutlineButton(
    this.label, {
    this.textColor = NAGColors.primaryButton,
    this.borderColor = NAGColors.primaryButton,
    this.textStyle = NAGBoldText.body1,
    required this.onPressed,
    this.icon,
    this.backgroundColor = NAGColors.light,
    this.radius,
    this.borderWidth,
    this.height = 46,
    Key? key,
  }) : super(key: key);

  const NAGOutlineButton.medium(
    this.label, {
    this.textColor = NAGColors.primaryButton,
    this.borderColor = NAGColors.primaryButton,
    this.textStyle = NAGBoldText.body2,
    required this.onPressed,
    this.icon,
    this.backgroundColor = NAGColors.light,
    this.radius,
    this.borderWidth = 1.0,
    this.height = 36,
    Key? key,
  }) : super(key: key);

  const NAGOutlineButton.small(
    this.label, {
    this.textColor = NAGColors.primaryButton,
    this.borderColor = NAGColors.primaryButton,
    this.textStyle = NAGMediumText.caption1,
    required this.onPressed,
    this.icon,
    this.backgroundColor = NAGColors.light,
    this.radius,
    this.borderWidth = 1.0,
    this.height = 28,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDisabled = onPressed == null;
    return SizedBox(
        height: height,
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            overlayColor: MaterialStateProperty.all(NAGColors.primary.shade100),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: radius ?? BorderRadius.circular(4.0),
                side: BorderSide(
                  width: borderWidth ?? 1.0,
                  color: isDisabled ? NAGColors.neutral.shade400 : borderColor,
                ),
              ),
            ),
            foregroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.disabled)) {
                  return NAGColors.neutral.shade400;
                }
                return textColor!;
              },
            ),
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.disabled)) {
                  return NAGColors.neutral.shade100;
                }
                return backgroundColor;
              },
            ),
            // backgroundColor: MaterialStateProperty.resolveWith<Color>(
            //   (Set<MaterialState> states) {
            //     return NAGColors.light;
            //   },
            // ),
          ),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null) icon!,
              if (icon != null) const NAGSizedBox.widthMedium(),
              Text(
                label,
                style: textStyle?.copyWith(
                  color: isDisabled ? NAGColors.neutral.shade400 : textColor,
                ),
              ),
            ],
          ),
        ));
  }
}
