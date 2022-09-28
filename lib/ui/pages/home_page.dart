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
        return Container(
          margin: const EdgeInsets.only(
            top: 22,
          ),
          child: Text(
            'Anime Ongoing',
            style: whiteTextStyle.copyWith(
              fontSize: 24,
              fontWeight: semiBold,
            ),
          ),
        );
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
                imageUrl: 'assets/anime1.jpg',
                episode: '90',
                title: 'Full Metal Alchemist Brotherhood',
              ),
              AnimeOngoingCard(
                imageUrl: 'assets/anime1.jpg',
                episode: '90',
                title: 'Full Metal Alchemist Brotherhood',
              ),
              AnimeOngoingCard(
                imageUrl: 'assets/anime1.jpg',
                episode: '90',
                title: 'Full Metal Alchemist Brotherhood',
              ),
            ],
          ),
        );
      }

      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
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
          ],
        ));
  }
}
