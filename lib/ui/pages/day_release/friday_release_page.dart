part of 'day_release.dart';

class FridayReleasePage extends StatelessWidget {
  const FridayReleasePage({Key? key}) : super(key: key);

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
                name: 'Shingeki no Kyojin: The Final Season Part 2',
                imageUrl: 'assets/anime2.jpg',
                episode: '12',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
