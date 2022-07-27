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
    final List<Widget>? imageSliders = imgList
        .map((item) => Container(
              margin: const EdgeInsets.all(5.0),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                child: Image.network(item, fit: BoxFit.cover, width: 1000.0),
              ),
            ))
        .toList();
    return Expanded(
      child: CarouselSlider(
        items: imageSliders,
        carouselController: _controller,
        options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 2.0,
            onPageChanged: (index, reason) {
              controller.current.value = index;
            }),
      ),
    );
  }
}
