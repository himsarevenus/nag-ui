part of 'index.dart';

class NAGImageSlider extends StatelessWidget {
  NAGImageSlider({
    Key? key,
    required this.controller,
    required this.imgList,
    required this.height,
  }) : super(key: key);

  final dynamic controller;
  final CarouselController _controller = CarouselController();
  final List<String> imgList;
  final double height;

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = imgList
        .map(
          (item) => Center(
            child: Image.network(
              item,
              fit: BoxFit.cover,
              height: height,
            ),
          ),
        )
        .toList();
    return Container(
      color: NAGColors.nagGrey25,
      child: CarouselSlider(
        items: imageSliders,
        carouselController: _controller,
        options: CarouselOptions(
            autoPlay: true,
            height: height,
            viewportFraction: 1.0,
            enlargeCenterPage: false,
            onPageChanged: (index, reason) {
              controller.current.value = index;
            }),
      ),
    );
  }
}
