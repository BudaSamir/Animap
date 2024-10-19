import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '/core/extensions/media_query_helper.dart';
import '/core/utils/constants/app_fonts.dart';
import '/core/widgets/custom_snackbar/snackbar_assests.dart';
import '/core/widgets/custom_snackbar/snackbar_content_type.dart';

class CustomSnackbar extends StatelessWidget {
  /// [IMPORTANT NOTE] for SnackBar properties before putting this in `content`
  /// backgroundColor: Colors.transparent
  /// behavior: SnackBarBehavior.floating
  /// elevation: 0.0

  /// /// `IMPORTANT NOTE` for MaterialBanner properties before putting this in `content`
  /// backgroundColor: Colors.transparent
  /// forceActionsBelow: true,
  /// elevation: 0.0
  /// [ inMaterialBanner = true ]

  /// title is the header String that will show on top
  final String title;

  /// Message String is the body message which shows only 2 lines at max
  final String message;

  /// Color of the Snackbar/MaterialBanner body [ optional ]
  final Color? color;

  /// content type will reflect the overall theme of the Snackbar/MaterialBanner
  /// Failure, Success, Help, Warning
  final SnackbarContentType contentType;

  /// if you want to customize the font style of the title
  final TextStyle? titleTextStyle;

  /// if you want to customize the font style of the message
  final TextStyle? messageTextStyle;

  final Function()? onPressed;

  const CustomSnackbar({
    super.key,
    required this.title,
    required this.message,
    this.color,
    required this.contentType,
    this.titleTextStyle,
    this.messageTextStyle,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) => _buildSnackBar(context);

  Container _buildSnackBar(BuildContext context) {
    bool isRTl = Directionality.of(context) == TextDirection.rtl;

    final hsl = HSLColor.fromColor(color ?? contentType.color!);
    final hslDark = hsl.withLightness((hsl.lightness - 0.1).clamp(0.0, 1.0));

    double horizontalPadding = 0.0;
    double leftSpace = context.width * 0.12;
    double rightSpace = context.width * 0.12;

    bool isMobile = context.width <= 768;
    bool isTablet = context.width <= 768 && context.width <= 992;
    if (isMobile) {
      horizontalPadding = context.width * 0.01;
    } else if (isTablet) {
      leftSpace = context.width * 0.05;
      horizontalPadding = context.width * 0.02;
    } else {
      leftSpace = context.width * 0.05;
      horizontalPadding = context.width * 0.01;
    }

    ///
    ///=================== Container Background ==========================
    ///
    return Container(
      margin: EdgeInsets.symmetric(horizontal: horizontalPadding),
      width: context.width * 0.25,
      height: 100,
      decoration: BoxDecoration(
        color: color ?? contentType.color,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          ///
          ///===================== Splash SVG Asset ============================
          ///
          Positioned(
              bottom: 0,
              left: 0,
              child: ClipRRect(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(20)),
                child: SvgPicture.asset(
                  SnackbarAssests.bubbles,
                  height: context.height * 0.06,
                  width: context.width * 0.05,
                  colorFilter:
                      _getColorFilter(hslDark.toColor(), ui.BlendMode.srcIn),
                ),
              )),

          ///
          ///======================== Bubble Icon ==============================
          ///
          Positioned(
              top: -context.height * 0.015,
              left: !isRTl
                  ? leftSpace -
                      8 -
                      (isMobile ? context.width * 0.075 : context.width * 0.035)
                  : null,
              right: isRTl
                  ? rightSpace -
                      8 -
                      (isMobile ? context.width * 0.075 : context.width * 0.035)
                  : null,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SvgPicture.asset(
                    SnackbarAssests.back,
                    height: context.height * 0.06,
                    colorFilter:
                        _getColorFilter(hslDark.toColor(), ui.BlendMode.srcIn),
                  ),
                  Positioned(
                    top: context.height * 0.015,
                    child: SvgPicture.asset(
                      _assetSVG(contentType),
                      height: context.height * 0.022,
                    ),
                  ),
                ],
              )),

          ///
          ///======================== Content ==================================
          ///
          Row(
            children: [
              Spacer(
                flex: 2,
              ),
              Expanded(
                flex: 6,
                child: Material(
                  type: MaterialType.transparency,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: titleTextStyle ??
                            TextStyle(
                              fontSize: AppFontSizes.s25,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                      ),
                      Text(
                        message,
                        style: messageTextStyle ??
                            TextStyle(
                              fontSize: AppFontSizes.s14,
                              color: Colors.white,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: IconButton(
                  onPressed: onPressed,
                  icon: Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  /// Reflecting proper icon based on the contentType
  String _assetSVG(SnackbarContentType contentType) {
    switch (contentType) {
      /// failure will show [ CROSS ]
      case SnackbarContentType.failure:
        return SnackbarAssests.failure;

      /// success will show [ CHECK ]
      case SnackbarContentType.success:
        return SnackbarAssests.success;

      /// warning will show [ EXCLAMATION ]
      case SnackbarContentType.warning:
        return SnackbarAssests.warning;

      /// help will show [ QUESTION MARK ]
      case SnackbarContentType.help:
        return SnackbarAssests.help;

      /// failure will show [ CROSS ]
      default:
        return SnackbarAssests.failure;
    }
  }

  static ColorFilter? _getColorFilter(
          ui.Color? color, ui.BlendMode colorBlendMode) =>
      color == null ? null : ui.ColorFilter.mode(color, colorBlendMode);
}
