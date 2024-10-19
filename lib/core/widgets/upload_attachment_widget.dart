import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:path/path.dart' as path;

import '../../core/utils/constants/app_colors.dart';
import '../../core/utils/constants/app_fonts.dart';
import '../utils/constants/app_strings.dart';

class UploadedAttachmentWidget extends StatelessWidget {
  const UploadedAttachmentWidget(
      {super.key, required this.file, required this.onPressedCancel});
  final File file;
  final void Function()? onPressedCancel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(10.h)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 1.h,
                    blurRadius: 3.h,
                    offset: Offset(0, 3.h))
              ]),
          height: 80.h,
          child: Padding(
            padding: EdgeInsets.all(10.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              // SvgPicture.asset(IconsPaths.folderIcon,
              //     height: 40.h, width: 40.w),
              SizedBox(width: 10.w),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: 250.w,
                        child: Text(path.basename(file.path),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: AppFontSizes.s18,
                                color: AppColors.primaryColor),
                            maxLines: 1)),
                    SizedBox(height: 5.h),
                    SizedBox(
                        width: 250.w,
                        child: InkWell(
                            onTap: onPressedCancel,
                            child: Text(
                              AppStrings.delete,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: AppFontSizes.s18,
                                  color: AppColors.red),
                              maxLines: 1,
                            ))),
                  ])
            ]),
          )),
    );
  }
}
