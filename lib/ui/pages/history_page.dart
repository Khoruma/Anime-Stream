part of 'pages.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backButton() {
      return GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          margin: const EdgeInsets.only(
            top: 15,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  right: 10,
                ),
                height: 24,
                width: 24,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icon_back.png'),
                  ),
                ),
              ),
              Text(
                'History',
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

    return Scaffold(
      backgroundColor: kBackgroudColor,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              backButton(),
            ],
          ),
        ),
      ),
    );
  }
}
