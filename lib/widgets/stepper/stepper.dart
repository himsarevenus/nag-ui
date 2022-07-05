part of 'index.dart';

/// If no icon provided default will shown the step index + 1
class NAGInformationStep {
  final Widget? icon;
  final String title;
  final String subtitle;
  final Widget? additional;

  NAGInformationStep({
    required this.title,
    required this.subtitle,
    this.icon,
    this.additional,
  });
}

class NAGInformationStepper extends StatelessWidget {
  const NAGInformationStepper({
    Key? key,
    required this.steps,
  }) : super(key: key);

  final List<NAGInformationStep> steps;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: steps.asMap().entries.map((e) {
        final isLast = e.key == steps.length - 1;
        final item = e.value;
        return IntrinsicHeight(
          child: Row(
            children: [
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: NAGColors.primary.shade100,
                    radius: 18,
                    child: item.icon ??
                        Center(
                          child: Text(
                            "${e.key + 1}",
                          ),
                        ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      height: double.infinity,
                      color: NAGColors.primary.shade100,
                      width: isLast ? 0 : 3,
                    ),
                  )
                ],
              ),
              const NAGSizedBox.width(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title,
                      style: NAGMediumText.body2.neutral80,
                    ),
                    const NAGSizedBox.textSpacing(),
                    Text(
                      item.subtitle,
                      style: NAGRegularText.caption1.neutral60,
                    ),
                    const NAGSizedBox.textSpacing(),
                    item.additional != null
                        ? item.additional!
                        : const SizedBox(),
                    const NAGSizedBox.heightXl()
                  ],
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
