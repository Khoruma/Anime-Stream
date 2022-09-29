part of 'widgets.dart';

class CustomTitle extends StatelessWidget {
  final String title;

  const CustomTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 22,
        left: defaultMargin,
        right: defaultMargin,
        bottom: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: whiteTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          ),
          Text(
            'Sell All',
            style: purpleTextSytle.copyWith(
              fontSize: 12,
              fontWeight: light,
            ),
          )
        ],
      ),
    );
  }
}
