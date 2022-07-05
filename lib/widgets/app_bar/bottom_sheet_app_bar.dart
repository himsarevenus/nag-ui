part of 'index.dart';

class NAGSheetAppBar extends StatelessWidget {
  final String title;

  final Widget? leading;
  // final List<Widget>? trailing;
  final Color backgroundColor;
  final bool withCloseButton;
  final VoidCallback? onPressClose;

  const NAGSheetAppBar(
    this.title, {
    Key? key,
    this.leading,
    // this.trailing,
    this.backgroundColor = Colors.white,
    this.withCloseButton = false,
    this.onPressClose,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        leading != null ? leading! : const SizedBox(),
        Expanded(
          child: Text(
            title,
            style: NAGBoldText.body1.neutral80,
          ),
        ),
        Row(
          children: [
            withCloseButton
                ? InkWell(
                    onTap: onPressClose ??
                        () {
                          Navigator.of(context).pop();
                        },
                    child: const Icon(
                      Icons.close,
                    ),
                  )
                : const SizedBox(),
          ],
        )
      ],
    );
  }
}
