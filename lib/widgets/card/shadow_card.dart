part of 'index.dart';

class NAGShadowCard extends StatelessWidget {
  const NAGShadowCard({
    Key? key,
    required this.child,
    this.onTap,
  }) : super(key: key);

  final Widget child;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: NAGSpacing.paddingAllMain,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: NAGColors.shadowColor,
              blurRadius: 5,
              spreadRadius: 2,
              offset: Offset(2, 2),
            ),
          ],
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: child,
      ),
    );
  }
}
