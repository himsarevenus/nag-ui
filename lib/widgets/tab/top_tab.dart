part of 'index.dart';

class NAGTopTab extends StatelessWidget {
  const NAGTopTab({
    Key? key,
    required this.label,
    this.isSelected = false,
    this.badgeCount,
  }) : super(key: key);

  final String label;
  final bool isSelected;
  final int? badgeCount;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  label,
                  style: NAGMediumText.body2.toggleColor(
                    isSelected,
                    active: NAGColors.primary,
                    inactive: NAGColors.textGrey,
                  ),
                ),
              ),
              badgeCount != null && badgeCount! > 0
                  ? Container(
                      margin: const EdgeInsets.only(left: NAGSpacing.small),
                      constraints: const BoxConstraints(
                        minWidth: 24,
                        minHeight: 24,
                      ),
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: isSelected
                            ? NAGColors.primary.shade100
                            : NAGColors.neutral.shade100,
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "$badgeCount",
                          style: NAGBoldText.caption1.copyWith(
                            color: isSelected
                                ? NAGColors.primary.shade500
                                : NAGColors.neutral.shade500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
          Container(
            height: 2,
            width: double.infinity,
            color: isSelected ? NAGColors.primary : Colors.transparent,
          ),
        ],
      ),
    );
  }
}
