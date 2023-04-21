part of 'index.dart';

class NAGButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? analyticName;
  final String label;
  final double? height;
  final Color? textColor;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final double borderRadius;

  const NAGButton(
    this.label, {
    this.analyticName,
    this.textColor = NAGColors.dark,
    this.backgroundColor = NAGColors.nagPrimary,
    required this.onPressed,
    this.textStyle = NAGBoldText.body1,
    this.height = 46,
    this.borderRadius = 4,
    Key? key,
  }) : super(key: key);

  const NAGButton.medium(
    this.label, {
    this.analyticName,
    this.textColor = NAGColors.dark,
    this.backgroundColor = NAGColors.nagPrimary,
    required this.onPressed,
    this.textStyle = NAGBoldText.body2,
    this.borderRadius = 4,
    this.height = 36,
    Key? key,
  }) : super(key: key);

  const NAGButton.small2(
    this.label, {
    this.analyticName,
    this.textColor = NAGColors.dark,
    this.backgroundColor = NAGColors.nagPrimary,
    required this.onPressed,
    this.textStyle = NAGMediumText.caption1,
    this.borderRadius = 4,
    this.height = 24,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return NAGColors.neutral.shade500;
              }
              return textColor!;
            },
          ),
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return NAGColors.neutral.shade200;
              }
              return backgroundColor!;
            },
          ),
        ),
        onPressed: onPressed,
        child: Text(
          label,
          style: textStyle,
        ),
      ),
    );
  }
}
