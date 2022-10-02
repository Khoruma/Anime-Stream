part of 'day_release.dart';

class MondayReleasePage extends StatelessWidget {
  const MondayReleasePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 120,
        bottom: 100,
      ),
      child: ListView(
        children: [
          Column(
            children: [
              AnimeTile(
                name: 'Full Metal Alchemist Brotherhood',
                imageUrl: 'assets/anime1.jpg',
                episode: '12',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
