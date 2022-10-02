part of 'widgets.dart';

class AnimeTile extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String episode;

  const AnimeTile({
    Key? key,
    required this.name,
    required this.imageUrl,
    required this.episode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 5),
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
                    image: AssetImage(
                      imageUrl,
                    ),
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
                        name,
                        style: whiteTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Episode $episode',
                        style: whiteTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: light,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
