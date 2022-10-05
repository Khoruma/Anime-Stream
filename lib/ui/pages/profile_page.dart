part of 'pages.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget imageProfile() {
      return Container(
        height: 140,
        width: 140,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/image_profile.png'),
          ),
        ),
      );
    }

    Widget detailProfile() {
      return Container(
        margin: const EdgeInsets.only(
          top: 10,
        ),
        child: Column(
          children: [
            Text(
              'Monkey D Luffy',
              style: whiteTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
            Text(
              'luffy.shp@gmail.com',
              style: whiteTextStyle.copyWith(
                fontSize: 14,
                fontWeight: light,
              ),
            ),
          ],
        ),
      );
    }

    Widget listOfMenuProfile() {
      Widget editProfileButton() {
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/edit-profile-page');
          },
          child: Container(
            margin: const EdgeInsets.only(
              bottom: 25,
            ),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    right: 10,
                  ),
                  width: 30,
                  height: 30,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/icon_profile_rounded.png',
                      ),
                    ),
                  ),
                ),
                Text(
                  'Edit  Profile',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                )
              ],
            ),
          ),
        );
      }

      Widget historyProfileButton() {
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/history-page');
          },
          child: Container(
            margin: const EdgeInsets.only(
              bottom: 25,
            ),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    right: 15,
                  ),
                  width: 25,
                  height: 25,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icon_history.png'),
                    ),
                  ),
                ),
                Text(
                  'History',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                )
              ],
            ),
          ),
        );
      }

      Widget logoutButton() {
        return Container(
          margin: const EdgeInsets.only(
            bottom: 25,
          ),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  right: 10,
                ),
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icon_logout.png'),
                  ),
                ),
              ),
              Text(
                'Logout',
                style: whiteTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              )
            ],
          ),
        );
      }

      return Container(
        margin: const EdgeInsets.only(
          top: 50,
          bottom: 150,
        ),
        padding: const EdgeInsets.only(
          left: 60,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            editProfileButton(),
            historyProfileButton(),
            logoutButton()
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroudColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              imageProfile(),
              detailProfile(),
              listOfMenuProfile(),
            ],
          ),
        ),
      ),
    );
  }
}
