part of 'pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Row(
          children: [
            Container(
              width: 109,
              height: 34,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/logo.png'),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget onGoingAnime() {
      Widget title() {
        return CustomTitle(title: 'Anime Ongoing');
      }

      Widget animeCard() {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              AnimeOngoingCard(
                imageUrl: 'assets/anime1.jpg',
                episode: '90',
                title: 'Full Metal Alchemist Brotherhood',
              ),
              AnimeOngoingCard(
                imageUrl: 'assets/anime2.jpg',
                episode: '12',
                title: 'Kaguya-sama wa Kokurasetai: Ultra Romantic',
              ),
              AnimeOngoingCard(
                imageUrl: 'assets/anime3.jpg',
                episode: '51',
                title: 'Gintama',
              ),
              AnimeOngoingCard(
                imageUrl: 'assets/anime4.jpg',
                episode: '154',
                title: 'Hunter X Hunter',
              ),
              AnimeOngoingCard(
                imageUrl: 'assets/anime5.jpg',
                episode: '11',
                title: 'Kimetsu no Yaiba: Yuukaku-hen',
              ),
            ],
          ),
        );
      }

      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            title(),
            animeCard(),
          ],
        ),
      );
    }

    Widget completeAnime() {
      Widget title() {
        return CustomTitle(title: 'Complete Anime');
      }

      Widget animeCard() {
        return GridView.count(
          crossAxisCount: 3,
        );
      }

      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            title(),
            animeCard(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroudColor,
      body: ListView(
        children: [
          header(),
          onGoingAnime(),
          completeAnime(),
        ],
      ),
    );
  }
}
