import 'package:flutter/material.dart';
import 'package:nag_ui/theme/index.dart';
import 'package:nag_ui/widgets/index.dart';

class NAGEmptyListWidget extends StatelessWidget {
  const NAGEmptyListWidget({
    Key? key,
    required this.icon,
    required this.title,
    this.subtitle,
    this.action,
    this.titleStyle,
  }) : super(key: key);

  final Widget icon;
  final String title;
  final String? subtitle;
  final Widget? action;

  final TextStyle? titleStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const NAGSizedBox.heightXl(),
            icon,
            const NAGSizedBox.height(),
            Text(
              title,
              style: titleStyle ?? NAGBoldText.body1.neutral80,
              textAlign: TextAlign.center,
            ),
            const NAGSizedBox.height(),
            Text(
              subtitle ?? "",
              style: NAGRegularText.body2.neutral60,
              textAlign: TextAlign.center,
            ),
            const NAGSizedBox.height(),
            action != null ? action! : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
