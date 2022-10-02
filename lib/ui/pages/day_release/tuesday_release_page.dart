part of 'day_release.dart';

class TuesdayReleasePage extends StatelessWidget {
  const TuesdayReleasePage({Key? key}) : super(key: key);

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
                        name: 'Kimetsu no Yaiba',
                        imageUrl: 'assets/anime5.jpg',
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
