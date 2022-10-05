part of 'pages.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buttonBack() {
      return GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          margin: const EdgeInsets.only(
            top: 16,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Row(
            children: [
              Container(
                height: 24,
                width: 24,
                margin: const EdgeInsets.only(
                  right: 15,
                ),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icon_back.png'),
                  ),
                ),
              ),
              Text(
                'Edit Profile',
                style: whiteTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget profilePicture() {
      return Container(
        margin: const EdgeInsets.only(
          top: 60,
        ),
        width: 140,
        height: 140,
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

      Widget fullName(){
        return Container();
      }

      return Container(
        margin: const EdgeInsets.only(
          top: 44,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 60,
        ),
        child: Column(children: [
          fullName(),
        ],),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroudColor,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              buttonBack(),
              profilePicture(),
              detailProfile(),
            ],
          ),
        ),
      ),
    );
  }
}
