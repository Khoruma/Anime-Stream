part of 'widgets.dart';

class AnimeOngoingCard extends StatelessWidget {
  final String imageUrl;
  final String episode;
  final String title;

  const AnimeOngoingCard({
    Key? key,
    required this.imageUrl,
    required this.episode,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin,
      ),
      height: 260,
      width: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          defaultRadius,
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 200,
            width: 130,
            margin: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  imageUrl,
                ),
              ),
              borderRadius: BorderRadius.circular(
                defaultRadius,
              ),
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: 25,
                    width: 100,
                    decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(0.8),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(defaultRadius),
                        bottomLeft: Radius.circular(defaultRadius),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Episode $episode',
                        style: whiteTextStyle.copyWith(
                          fontSize: 10,
                          fontWeight: medium,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Text(
            title,
            style: whiteTextStyle.copyWith(
              fontSize: 12,
              fontWeight: semiBold,
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
