part of 'index.dart';

class NAGSkeletonLoading extends StatelessWidget {
  final double height;
  final double width;
  final double? radius;

  const NAGSkeletonLoading({
    this.height = 30,
    this.width = double.infinity,
    this.radius,
    Key? key,
  }) : super(key: key);

  const NAGSkeletonLoading.blogBanner([
    this.width = double.infinity,
    this.height = 300,
    this.radius = 0,
    Key? key,
  ]) : super(key: key);

  const NAGSkeletonLoading.tab([
    this.width = 120,
    this.height = 30,
    this.radius = 8,
    Key? key,
  ]) : super(key: key);

  const NAGSkeletonLoading.blog([
    this.width = double.infinity,
    this.height = 100,
    this.radius = 0,
    Key? key,
  ]) : super(key: key);

  const NAGSkeletonLoading.smallText([
    this.width = 100,
    this.height = 16,
    this.radius,
    Key? key,
  ]) : super(key: key);

  const NAGSkeletonLoading.widthText([
    this.height = 16,
    this.width = double.infinity,
    this.radius,
    Key? key,
  ]) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: NAGColors.neutral.shade200,
      highlightColor: NAGColors.neutral.shade100,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? height / 5),
          color: NAGColors.neutral,
        ),
      ),
    );
  }
}
