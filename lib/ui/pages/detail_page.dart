part of 'pages.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 245,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/anime8.jpg',
            ),
          ),
        ),
      );
    }

    Widget customShadow() {
      return Container(
        width: double.infinity,
        height: 70,
        margin: const EdgeInsets.only(top: 175),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              kWhiteColor.withOpacity(0),
              Colors.black.withOpacity(0.95),
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 255,
                bottom: 15,
              ),
              child: Text(
                'Shingeki no Kyojin: The Final Season Part 2',
                style: whiteTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 160,
                  height: 40,
                  decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(defaultRadius)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 17,
                        width: 17,
                        margin: const EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icon_play.png'),
                          ),
                        ),
                      ),
                      Text(
                        'Play',
                        style: whiteTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: semiBold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 160,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: kPrimaryColor,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 17,
                        width: 17,
                        margin: const EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icon_add.png'),
                          ),
                        ),
                      ),
                      Text(
                        'My List',
                        style: whiteTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: semiBold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 21,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Genre: ',
                            style: greyTextStyle.copyWith(
                                fontSize: 12, fontWeight: light),
                            children: <TextSpan>[
                              TextSpan(
                                text:
                                    'Action, Adventure, Comedy, Drama, Fantasy, Shounen',
                                style: purpleTextSytle.copyWith(
                                    fontSize: 12, fontWeight: light),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'Score : ',
                            style: greyTextStyle.copyWith(
                                fontSize: 12, fontWeight: light),
                            children: <TextSpan>[
                              TextSpan(
                                text: '8.65',
                                style: whiteTextStyle.copyWith(
                                    fontSize: 12, fontWeight: light),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'Duration : ',
                            style: greyTextStyle.copyWith(
                                fontSize: 12, fontWeight: light),
                            children: <TextSpan>[
                              TextSpan(
                                text: '24 min/ep',
                                style: whiteTextStyle.copyWith(
                                    fontSize: 12, fontWeight: light),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Status: ',
                            style: greyTextStyle.copyWith(
                                fontSize: 12, fontWeight: light),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Ongoing',
                                style: whiteTextStyle.copyWith(
                                    fontSize: 12, fontWeight: light),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'Date Aired : ',
                            style: greyTextStyle.copyWith(
                                fontSize: 12, fontWeight: light),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Oct 20, 1999 to ?',
                                style: whiteTextStyle.copyWith(
                                    fontSize: 12, fontWeight: light),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 15,
              ),
              child: ExpandableText(
                r'Turning against his former allies and enemies alike, Eren Yeager sets a disastrous plan in motion. Under the guidance of the Beast Titan, Zeke, Eren takes extreme measures to end the ancient conflict between Marley and Eldia—but his true intentions remain a mystery. Delving deep into his familys past, Eren fights to control his own destiny.Meanwhile, the long-feuding nations of Marley and Eldia utilize both soldiers and Titans in a brutal race to eliminate the other. Reiner Braun uses his own powers in a desperate bid to hold off Erens own militaristic force, and his fellow Eldians—children Falco Grice and Gabi Braun—struggle to survive in the unfolding chaos.Elsewhere, Erens childhood friends Mikasa Ackerman and Armin Arlert remain imprisoned alongside Erens former Survey Corps companions, all disturbed by Erens monstrous transformation. Under the blind belief that Eren still secretly harbors good intentions, Mikasa and the others enter the fray in an attempt to save their friends very soul.',
                style: greyTextStyle.copyWith(fontSize: 12, fontWeight: light),
                maxLines: 5,
                expandText: ' See more',
                collapseText: ' See less',
                linkColor: kPrimaryColor,
                animation: true,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 15,
                bottom: 75,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Episode',
                        style: whiteTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: semiBold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroudColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              backgroundImage(),
              customShadow(),
              content(),
            ],
          ),
        ),
      ),
    );
  }
}
