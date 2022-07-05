part of 'index.dart';

class NAGLoadingIndicator extends StatelessWidget {
  const NAGLoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 40,
      height: 40,
      child: CircularProgressIndicator(),
    );
  }
}
