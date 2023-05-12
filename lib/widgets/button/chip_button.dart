part of 'index.dart';

class ChipButton extends StatelessWidget {
  const ChipButton({
    Key? key,
    required this.text,
    this.onTap,
  }) : super(key: key);

  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: NAGSpacing.main,
          vertical: NAGSpacing.small,
        ),
        decoration: BoxDecoration(
          color: NAGColors.primary.shade100,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          text,
          style: NAGBoldText.caption1.purple50,
        ),
      ),
    );
  }
}
