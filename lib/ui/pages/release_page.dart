part of 'pages.dart';

class RelasePage extends StatelessWidget {
  const RelasePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return SundayReleasePage();
        case 1:
          return MondayReleasePage();
        case 2:
          return TuesdayReleasePage();
        case 3:
          return WednesdayReleasePage();
        case 4:
          return ThursdayReleasePage();
        case 5:
          return FridayReleasePage();
        case 6:
          return SaturdayReleasePage();
        default:
          return SundayReleasePage();
      }
    }

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
        margin: EdgeInsets.only(
          top: 60,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomDayRelaseItem(
              index: 0,
              day: 'Sun',
            ),
            CustomDayRelaseItem(
              index: 1,
              day: 'Mon',
            ),
            CustomDayRelaseItem(
              index: 2,
              day: 'Tue',
            ),
            CustomDayRelaseItem(
              index: 3,
              day: 'Wed',
            ),
            CustomDayRelaseItem(
              index: 4,
              day: 'Thu',
            ),
            CustomDayRelaseItem(
              index: 5,
              day: 'Fri',
            ),
            CustomDayRelaseItem(
              index: 6,
              day: 'Sat',
            ),
          ],
        ),
      );
    }

    return BlocBuilder<ReleasePageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kBackgroudColor,
          body: Stack(
            children: [
              title(),
              buildContent(currentIndex),
              dayRelease(),
            ],
          ),
        );
      },
    );
  }
}
