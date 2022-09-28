part of 'widgets.dart';

class CustomTextFormField extends StatelessWidget {
  final String title;
  final bool obscureText;
  final TextEditingController controller;

  const CustomTextFormField({
    Key? key,
    required this.title,
    this.obscureText = false,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            style: TextStyle(color: kWhiteColor),
            obscureText: obscureText,
            cursorColor: kPrimaryColor,
            controller: controller,
            decoration: InputDecoration(
              labelText: title,
              labelStyle: TextStyle(
                color: kWhiteColor,
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kWhiteColor),
                  borderRadius: BorderRadius.circular(defaultRadius)),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
                borderSide: BorderSide(color: kPrimaryColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
