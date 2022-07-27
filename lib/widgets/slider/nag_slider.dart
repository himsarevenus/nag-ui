part of 'index.dart';

class NAGImageSlider extends StatelessWidget {
  NAGImageSlider({
    Key? key,
    required this.controller,
    required this.imgList,
  }) : super(key: key);

  final dynamic controller;
  final CarouselController _controller = CarouselController();
  final List<String> imgList;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 0.6;
    final List<Widget>? imageSliders = imgList
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
    return Expanded(
      child: Container(
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
      ),
    );
  }
}
