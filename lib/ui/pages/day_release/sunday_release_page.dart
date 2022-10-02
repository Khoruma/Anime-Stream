part of 'day_release.dart';

class SundayReleasePage extends StatelessWidget {
  const SundayReleasePage({Key? key}) : super(key: key);

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
                        name: 'Spy X Family',
                        imageUrl: 'assets/anime10.jpg',
                        episode: '12',
                      ),
                      AnimeTile(
                        name: 'Cowboy Beepop',
                        imageUrl: 'assets/anime11.jpg',
                        episode: '45',
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
