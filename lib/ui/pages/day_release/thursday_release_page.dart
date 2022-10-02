part of 'day_release.dart';

class ThursdayReleasePage extends StatelessWidget {
  const ThursdayReleasePage({Key? key}) : super(key: key);

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
                name: 'Kaguya-sama wa Kokurasetai: Ultra Romantic',
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