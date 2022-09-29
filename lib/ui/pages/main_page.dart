part of 'pages.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return const HomePage();
        case 1:
          return const RelasePage();
        case 2:
          return const FavoritesPage();
        case 3:
          return const ProfilePage();
        default:
          return const HomePage();
      }
    }

    Widget customBottonNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
            bottom: 30,
            right: defaultMargin,
            left: defaultMargin,
          ),
          decoration: BoxDecoration(
            color: kBackgroudColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomNavigationItems(
                index: 0,
                title: 'Home',
                imageUrl: 'assets/icon_home.png',
              ),
              CustomBottomNavigationItems(
                index: 1,
                title: 'Relase Date',
                imageUrl: 'assets/icon_release.png',
              ),
              CustomBottomNavigationItems(
                index: 2,
                title: 'Favorites',
                imageUrl: 'assets/icon_favorites.png',
              ),
              CustomBottomNavigationItems(
                index: 3,
                title: 'Profile',
                imageUrl: 'assets/icon_profile.png',
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kBackgroudColor,
          body: Stack(
            children: [
              buildContent(currentIndex),
              customBottonNavigation(),
            ],
          ),
        );
      },
    );
  }
}
