part of 'day_release.dart';

class MondayReleasePage extends StatelessWidget {
  const MondayReleasePage({Key? key}) : super(key: key);

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
                        name: 'Gintama',
                        imageUrl: 'assets/anime3.jpg',
                        episode: '12',
                      ),
                      AnimeTile(
                        name: 'Haikyu!! Season 3',
                        imageUrl: 'assets/anime9.jpg',
                        episode: '12',
                      ),
                      AnimeTile(
                        name: 'Monster',
                        imageUrl: 'assets/anime6.jpg',
                        episode: '12',
                      ),
                      AnimeTile(
                        name: 'Hunter X Hunter',
                        imageUrl: 'assets/anime2.jpg',
                        episode: '68',
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
