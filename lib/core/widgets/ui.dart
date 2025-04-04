import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '/core/extensions/settings_helper.dart';
import '/core/utils/constants/app_colors.dart';
import '/core/utils/language/languages_setup/app_localizations_delegate.dart';

class Ui {
  static SnackBar successSnackBar(
      {required BuildContext context,
      String title = 'Success',
      String? message}) {
    debugPrint("[$title] $message");
    return SnackBar(
      content: Text(title.tr(context),
          style: context.theme.textTheme.headlineSmall
              ?.merge(TextStyle(color: context.color.primaryColor))),
      // messageText: Text(message!,
      //     style: context.theme.textTheme.bodySmall
      //         ?.merge(TextStyle(color: context.color.primaryColor))),
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.all(30.h),
      backgroundColor: Colors.green,
      // icon: Icon(Icons.check_circle_outline,
      //     size: 32.sp, color: context.color.primaryColor),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      dismissDirection: DismissDirection.horizontal,
      duration: const Duration(seconds: 3),
    );
  }

  static SnackBar errorSnackBar(
      {required BuildContext context,
      String title = 'Error',
      String? message}) {
    debugPrint("[$title] $message");
    return SnackBar(
      content: Text(title.tr(context),
          style: context.theme.textTheme.headlineSmall
              ?.merge(TextStyle(color: context.color.primaryColor))),
      // messageText: Text(message!,
      //     style: context.theme.textTheme.bodySmall
      //         ?.merge(TextStyle(color: context.color.primaryColor))),
      // snackPosition: SnackPosition.BOTTOM,
      margin: EdgeInsets.all(30.h),
      backgroundColor: Colors.redAccent,
      // icon: Icon(Icons.remove_circle_outline,
      //     size: 32.sp, color: context.color.primaryColor),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      duration: const Duration(seconds: 3),
    );
  }

  static SnackBar defaultSnackBar(
      {required BuildContext context,
      String title = 'Alert',
      String? message}) {
    debugPrint("[$title] $message");
    return SnackBar(
      content: SizedBox(),
      // content: Text(title.tr(context),
      //     style: context.theme.textTheme.headlineSmall
      //         ?.merge(TextStyle(color: context.color.hintColor))),
      // messageText: Text(message!,
      //     style: context.theme.textTheme.bodySmall
      //         ?.merge(TextStyle(color: context.color.focusColor))),
      // snackPosition: SnackPosition.BOTTOM,
      margin: EdgeInsets.all(20.h),
      backgroundColor: context.color.primaryColor,
      // borderColor: context.color.focusColor.withOpacity(0.1),
      // icon: Icon(Icons.warning_amber_rounded,
      //     size: 32.sp, color: context.color.hintColor),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      duration: const Duration(seconds: 5),
    );
  }

  static SnackBar notificationSnackBar(
      {required BuildContext context,
      String title = 'Notification',
      String? message,
      // OnTap? onTap,
      Widget? mainButton}) {
    debugPrint(
      "[$title] $message",
    );
    return SnackBar(
      content: SizedBox(),
      // onTap: onTap,
      // mainButton: mainButton,
      // content: Text(title.tr(context),
      //     style: context.theme.textTheme.headlineSmall
      //         ?.merge(TextStyle(color: context.color.hintColor))),
      // messageText: Text(message!,
      //     style: context.theme.textTheme.bodySmall
      //         ?.merge(TextStyle(color: context.color.focusColor))),
      // snackPosition: SnackPosition.TOP,
      margin: EdgeInsets.all(20.h),
      backgroundColor: context.color.primaryColor,
      // borderColor: context.color.focusColor.withOpacity(0.1),
      // icon: Icon(Icons.notifications_none,
      //     size: 32.sp, color: context.color.hintColor),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      duration: const Duration(seconds: 5),
    );
  }

  static Color parseColor(String hexCode, {double? opacity}) {
    try {
      return Color(int.parse(hexCode.replaceAll("#", "0xFF")))
          .withOpacity(opacity ?? 1);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity ?? 1);
    }
  }

  static List<Icon> getStarsList(double rate, {double size = 18}) {
    var list = <Icon>[];
    list = List.generate(rate.floor(), (index) {
      return Icon(Icons.star, size: size, color: const Color(0xFFFFB24D));
    });
    if (rate - rate.floor() > 0) {
      list.add(
          Icon(Icons.star_half, size: size, color: const Color(0xFFFFB24D)));
    }
    list.addAll(
        List.generate(5 - rate.floor() - (rate - rate.floor()).ceil(), (index) {
      return Icon(Icons.star_border,
          size: size, color: const Color(0xFFFFB24D));
    }));
    return list;
  }

  static BoxDecoration getBoxDecoration(
      {Color? color, double? radius, Border? border, Gradient? gradient}) {
    return BoxDecoration(
      color: color ?? AppColors.primaryColor,
      borderRadius: BorderRadius.all(Radius.circular(radius ?? 10)),
      boxShadow: [
        BoxShadow(
            color: AppColors.red.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5)),
      ],
      border: border ?? Border.all(color: AppColors.red.withOpacity(0.05)),
      gradient: gradient,
    );
  }

  static void showToast({required String content, bool error = false}) {
    Fluttertoast.showToast(
      msg: content,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: !error ? AppColors.black : AppColors.white,
      textColor: !error ? AppColors.white : AppColors.red,
    );
  }

  // static InputDecoration getInputDecoration(
  //     {String hintText = '',
  //     String? errorText,
  //     IconData? iconData,
  //     Widget? suffixIcon,
  //     Widget? suffix}) {
  //   return InputDecoration(
  //     hintText: hintText,
  //     hintStyle: context.theme.textTheme.bodySmall,
  //     prefixIcon: iconData != null
  //         ? Icon(iconData, color: context.color.focusColor).marginOnly(right: 14)
  //         : const SizedBox(),
  //     prefixIconConstraints: iconData != null
  //         ? const BoxConstraints.expand(width: 38, height: 38)
  //         : const BoxConstraints.expand(width: 0, height: 0),
  //     floatingLabelBehavior: FloatingLabelBehavior.never,
  //     contentPadding: const EdgeInsets.all(0),
  //     border: const OutlineInputBorder(borderSide: BorderSide.none),
  //     focusedBorder: const OutlineInputBorder(borderSide: BorderSide.none),
  //     enabledBorder: const OutlineInputBorder(borderSide: BorderSide.none),
  //     suffixIcon: suffixIcon,
  //     suffix: suffix,
  //     errorText: errorText,
  //   );
  // }

  static BoxFit getBoxFit(String boxFit) {
    switch (boxFit) {
      case 'cover':
        return BoxFit.cover;
      case 'fill':
        return BoxFit.fill;
      case 'contain':
        return BoxFit.contain;
      case 'fit_height':
        return BoxFit.fitHeight;
      case 'fit_width':
        return BoxFit.fitWidth;
      case 'none':
        return BoxFit.none;
      case 'scale_down':
        return BoxFit.scaleDown;
      default:
        return BoxFit.cover;
    }
  }

  static AlignmentDirectional getAlignmentDirectional(
      String alignmentDirectional) {
    switch (alignmentDirectional) {
      case 'top_start':
        return AlignmentDirectional.topStart;
      case 'top_center':
        return AlignmentDirectional.topCenter;
      case 'top_end':
        return AlignmentDirectional.topEnd;
      case 'center_start':
        return AlignmentDirectional.centerStart;
      case 'center':
        return AlignmentDirectional.topCenter;
      case 'center_end':
        return AlignmentDirectional.centerEnd;
      case 'bottom_start':
        return AlignmentDirectional.bottomStart;
      case 'bottom_center':
        return AlignmentDirectional.bottomCenter;
      case 'bottom_end':
        return AlignmentDirectional.bottomEnd;
      default:
        return AlignmentDirectional.bottomEnd;
    }
  }

  static CrossAxisAlignment getCrossAxisAlignment(String textPosition) {
    switch (textPosition) {
      case 'top_start':
        return CrossAxisAlignment.start;
      case 'top_center':
        return CrossAxisAlignment.center;
      case 'top_end':
        return CrossAxisAlignment.end;
      case 'center_start':
        return CrossAxisAlignment.center;
      case 'center':
        return CrossAxisAlignment.center;
      case 'center_end':
        return CrossAxisAlignment.center;
      case 'bottom_start':
        return CrossAxisAlignment.start;
      case 'bottom_center':
        return CrossAxisAlignment.center;
      case 'bottom_end':
        return CrossAxisAlignment.end;
      default:
        return CrossAxisAlignment.start;
    }
  }

  static bool isDesktop(BoxConstraints constraint) {
    return constraint.maxWidth >= 1280;
  }

  static bool isTablet(BoxConstraints constraint) {
    return constraint.maxWidth >= 768 && constraint.maxWidth <= 1280;
  }

  static bool isMobile(BoxConstraints constraint) {
    return constraint.maxWidth < 768;
  }

  static double col12(BoxConstraints constraint,
      {double desktopWidth = 1280,
      double tabletWidth = 768,
      double mobileWidth = 480}) {
    if (isMobile(constraint)) {
      return mobileWidth;
    } else if (isTablet(constraint)) {
      return tabletWidth;
    } else {
      return desktopWidth;
    }
  }

  static double col9(BoxConstraints constraint,
      {double desktopWidth = 1280,
      double tabletWidth = 768,
      double mobileWidth = 480}) {
    if (isMobile(constraint)) {
      return mobileWidth * 3 / 4;
    } else if (isTablet(constraint)) {
      return tabletWidth * 3 / 4;
    } else {
      return desktopWidth * 3 / 4;
    }
  }

  static double col8(BoxConstraints constraint,
      {double desktopWidth = 1280,
      double tabletWidth = 768,
      double mobileWidth = 480}) {
    if (isMobile(constraint)) {
      return mobileWidth * 2 / 3;
    } else if (isTablet(constraint)) {
      return tabletWidth * 2 / 3;
    } else {
      return desktopWidth * 2 / 3;
    }
  }

  static double col6(BoxConstraints constraint,
      {double desktopWidth = 1280,
      double tabletWidth = 768,
      double mobileWidth = 480}) {
    if (isMobile(constraint)) {
      return mobileWidth / 2;
    } else if (isTablet(constraint)) {
      return tabletWidth / 2;
    } else {
      return desktopWidth / 2;
    }
  }

  static double col4(BoxConstraints constraint,
      {double desktopWidth = 1280,
      double tabletWidth = 768,
      double mobileWidth = 480}) {
    if (isMobile(constraint)) {
      return mobileWidth * 1 / 3;
    } else if (isTablet(constraint)) {
      return tabletWidth * 1 / 3;
    } else {
      return desktopWidth * 1 / 3;
    }
  }

  static double col3(BoxConstraints constraint,
      {double desktopWidth = 1280,
      double tabletWidth = 768,
      double mobileWidth = 480}) {
    if (isMobile(constraint)) {
      return mobileWidth * 1 / 4;
    } else if (isTablet(constraint)) {
      return tabletWidth * 1 / 4;
    } else {
      return desktopWidth * 1 / 4;
    }
  }
  //
  // static Future confirmDialog(
  //     {required String middleText,
  //     required String confirmBtnTitle,
  //     required void Function() onSave,
  //     required void Function() onDiscard,
  //     required String title}) {
  //   return DefaultDialog(
  //       title: title,
  //       middleText: middleText,
  //       middleTextStyle: TextStyle(
  //           fontWeight: FontWeight.bold,
  //           color: AppColors.mainColor,
  //           fontSize: 14.sp),
  //       confirm: PrimaryButton(
  //           title: confirmBtnTitle,
  //           onPressed: onSave,
  //           width: 100.w,
  //           backgroundColor: AppColors.mintGreen,
  //           textAndIconColor: AppColors.black),
  //       cancel: PrimaryButton(
  //           title: Strings.discard,
  //           onPressed: onDiscard,
  //           width: 100.w,
  //           backgroundColor: AppColors.white,
  //           textAndIconColor: AppColors.mainColor),
  //       radius: 10.h);
  // }
}
