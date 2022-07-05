part of 'index.dart';

class BottomSheetDragIndicator extends StatelessWidget {
  const BottomSheetDragIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6,
      width: 72,
      decoration: BoxDecoration(
        color: NAGColors.neutral.shade300,
        borderRadius: BorderRadius.circular(6),
      ),
    );
  }
}
