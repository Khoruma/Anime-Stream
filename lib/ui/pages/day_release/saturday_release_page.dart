part of 'day_release.dart';

class SaturdayReleasePage extends StatelessWidget {
  const SaturdayReleasePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(
          top: 130,
        ),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(
                bottom: 100,
              ),
              child: Stack(
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
            ),
          ],
        ),
      ),
    );
  }
}
