import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/utils/constants/app_colors.dart';
import '../../core/utils/constants/app_fonts.dart';
import '../../core/utils/constants/app_strings.dart';

class UploadFileWidget extends StatelessWidget {
  const UploadFileWidget({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(Radius.circular(10.r))),
                child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(title,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: AppFontSizes.s18,
                                    color: Colors.black)),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(AppStrings.noFilesAttached,
                                style: TextStyle(
                                    fontSize: AppFontSizes.s14,
                                    color: Colors.grey[600]))
                          ],
                        ),
                        Text(AppStrings.upload,
                            style: TextStyle(
                                fontSize: AppFontSizes.s18,
                                color: AppColors.black))
                      ],
                    )))));
  }
}
