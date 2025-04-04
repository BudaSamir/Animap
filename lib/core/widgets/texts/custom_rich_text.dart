// ignore_for_file: must_be_immutable

import 'package:animap_app/core/utils/constants/app_fonts.dart';

import 'texts.dart';

class CustomRichText extends StatelessWidget {
  final int length;
  final List<String> texts;
  final List<Color?> textsColors;
  final List<double> textsFonts;
  List<FontWeight>? textsFontsWeights;
  Color? mainColor;
  TextAlign textAlign;

  CustomRichText({
    super.key,
    required this.length,
    required this.texts,
    required this.textsColors,
    required this.textsFonts,
    this.textsFontsWeights,
    this.textAlign = TextAlign.start,
    this.mainColor,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign,
      text: TextSpan(
        style: TextStyle(color: mainColor),
        children: List<TextSpan>.generate(
          length,
          (int index) => TextSpan(
            text: texts[index],
            style: TextStyle(
                color: textsColors[index],
                fontSize: textsFonts[index],
                fontWeight: textsFontsWeights?[index],
                fontFamily: AppFontConstants.fontFamily),
          ),
        ),
      ),
    );
  }
}
