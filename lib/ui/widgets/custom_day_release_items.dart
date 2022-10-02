part of 'widgets.dart';

class CustomDayRelaseItem extends StatelessWidget {
  final int index;
  final String day;

  const CustomDayRelaseItem({
    Key? key,
    required this.index,
    required this.day,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<ReleasePageCubit>().setPage(index);
      },
      child: Container(
        height: 40,
        width: 40,
        decoration: context.read<ReleasePageCubit>().state == index
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kPrimaryColor,
              )
            : BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: kGreyColor,
                  width: 1,
                ),
              ),
        child: Center(
          child: Text(
            day,
            style: context.read<ReleasePageCubit>().state == index
                ? whiteTextStyle.copyWith(
                    fontSize: 12, fontWeight: light, color: kWhiteColor)
                : whiteTextStyle.copyWith(
                    fontSize: 12, fontWeight: light, color: kGreyColor),
          ),
        ),
      ),
    );
  }
}
