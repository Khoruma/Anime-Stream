part of 'pages.dart';

class RelasePage extends StatelessWidget {
  const RelasePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: defaultMargin,
        ),
        child: Text(
          'Relesase Date',
          style: whiteTextStyle.copyWith(
            fontSize: 20,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget dayRelease() {
      return Container(
        margin:
            EdgeInsets.only(top: 15, left: defaultMargin, right: defaultMargin),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Sun',
                  style: whiteTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: light,
                  ),
                ),
              ),
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Sun',
                  style: whiteTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: light,
                  ),
                ),
              ),
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Sun',
                  style: whiteTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: light,
                  ),
                ),
              ),
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Sun',
                  style: whiteTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: light,
                  ),
                ),
              ),
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Sun',
                  style: whiteTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: light,
                  ),
                ),
              ),
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Sun',
                  style: whiteTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: light,
                  ),
                ),
              ),
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Sun',
                  style: whiteTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: light,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget animeTile() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
          left: defaultMargin,
          right: defaultMargin,
          bottom: 15,
        ),
        padding: const EdgeInsets.all(
          10,
        ),
        decoration: BoxDecoration(
            color: kGreyColor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(defaultRadius)),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 100,
                  width: 70,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/anime8.jpg'),
                    ),
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                ),
                Expanded(
                    child: Container(
                  margin: const EdgeInsets.only(
                    left: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shingeki no Kyojin: The Final Season Part 2',
                        style: whiteTextStyle.copyWith(
                          fontSize: 17,
                          fontWeight: semiBold,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Episode 12',
                        style: whiteTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: light,
                        ),
                      )
                    ],
                  ),
                ))
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroudColor,
      body: SafeArea(
        child: ListView(
          children: [
            title(),
            dayRelease(),
            animeTile(),
          ],
        ),
      ),
    );
  }
}
