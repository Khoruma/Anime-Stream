part of 'widgets.dart';

class CustomBottomNavigationItems extends StatelessWidget {
  final int index;
  final String imageUrl;
  final String title;

  const CustomBottomNavigationItems({
    Key? key,
    required this.index,
    required this.imageUrl,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Image.asset(
            imageUrl,
            width: 24,
            height: 24,
            color: context.read<PageCubit>().state == index
                ? kPrimaryColor
                : kGreyColor,
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 5),
            child: Text(
              title,
              style: TextStyle(
                color: context.read<PageCubit>().state == index
                    ? kPrimaryColor
                    : kGreyColor,
                fontSize: 12,
                fontWeight: light,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
