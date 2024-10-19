import 'texts.dart';

enum TextStyles {
  basic,
  bold,
  semiBold,
  medium,
  regular,
  light,
}

class CustomText extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final Color? color;
  final double fontSize;
  final double? letterSpacing;
  final FontWeight? fontWeight;

  const CustomText(
      {super.key,
      required this.text,
      this.textAlign = TextAlign.start,
      this.color,
      required this.fontSize,
      this.fontWeight,
      this.letterSpacing});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
        letterSpacing: letterSpacing,
      ),
    );
  }
}
