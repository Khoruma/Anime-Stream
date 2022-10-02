part of 'pages.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(
          top: 40,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Text(
          'Favorites',
          style: whiteTextStyle.copyWith(
            fontSize: 20,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget favoriteAnime() {
      return Container(
        margin: EdgeInsets.only(
          top: 90,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: const EdgeInsets.only(
              bottom: 110,
            ),
            child: GridView.count(
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              crossAxisCount: 2,
              childAspectRatio: 5 / 8,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/anime9.jpg',
                      ),
                    ),
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/anime1.jpg',
                      ),
                    ),
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/anime2.jpg',
                      ),
                    ),
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/anime3.jpg',
                      ),
                    ),
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/anime4.jpg',
                      ),
                    ),
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/anime5.jpg',
                      ),
                    ),
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroudColor,
      body: Stack(
        children: [
          title(),
          favoriteAnime(),
        ],
      ),
    );
  }
}
