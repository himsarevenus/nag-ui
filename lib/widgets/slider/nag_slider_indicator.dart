part of 'index.dart';

class NAGSliderIndicator extends StatelessWidget {
  NAGSliderIndicator({
    Key? key,
    required this.controller,
    required this.imgList,
  }) : super(key: key);

  final dynamic controller;
  final CarouselController _controller = CarouselController();
  final List<String> imgList;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: imgList.asMap().entries.map(
        (entry) {
          return GestureDetector(
            onTap: () => _controller.animateToPage(entry.key),
            child: Obx(
              () {
                return Container(
                  width: 4.0,
                  height: 4.0,
                  margin: const EdgeInsets.symmetric(horizontal: 12.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: controller.current.value == entry.key
                        ? NAGColors.nagPrimary
                        : NAGColors.nagGrey25,
                  ),
                );
              },
            ),
          );
        },
      ).toList(),
    );
  }
}
