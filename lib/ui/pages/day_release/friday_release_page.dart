part of 'day_release.dart';

class FridayReleasePage extends StatelessWidget {
  const FridayReleasePage({Key? key}) : super(key: key);

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
                        name: 'Shingeki no Kyojin Season 3',
                        imageUrl: 'assets/anime8.jpg',
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
