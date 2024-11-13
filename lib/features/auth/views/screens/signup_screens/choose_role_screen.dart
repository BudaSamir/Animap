import 'package:animap_app/core/extensions/media_query_helper.dart';
import 'package:animap_app/core/extensions/navigate_helper.dart';
import 'package:animap_app/core/services/route_services/routes_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/constants/app_assets.dart';
import '../../../../../core/utils/constants/app_colors.dart';
import '../../../../../core/utils/constants/app_fonts.dart';
import '../../../../../core/widgets/scaffold/custom_scaffold.dart';
import '../../../../../core/widgets/texts/custom_text.dart';
import '../../widgets/role_type_card.dart';
import '../../widgets/terms_and_policy.dart';

class ChooseRoleScreen extends StatelessWidget {
  const ChooseRoleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Container(
            margin: EdgeInsets.all(5),
            height: 40.h,
            width: 40.w,
            decoration: BoxDecoration(
                color: AppColors.primaryColor.shade50,
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child:
                Icon(Icons.arrow_back_ios_sharp, color: AppColors.primaryColor),
          ),
        ),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///======================== Title ================================
              Padding(
                padding: EdgeInsets.symmetric(vertical: context.height * 0.03),
                child: CustomText(
                  text: "Sign Up",
                  color: AppColors.primaryColor.shade800,
                  fontSize: AppFontSizes.s20,
                  fontWeight: AppFontWeights.bold,
                  textAlign: TextAlign.start,
                ),
              ),

              ///======================== Roles Cards  =========================
              SizedBox(
                width: double.infinity,
                height: context.height * 0.45,
                child: GridView.builder(
                  clipBehavior: Clip.none,
                  itemCount: 3,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 25,
                      crossAxisCount: 2,
                      mainAxisSpacing: 25),
                  itemBuilder: (context, index) => RoleTypeCard(
                    image: index == 0
                        ? AppAssets.communityMember
                        : index == 1
                            ? AppAssets.vet
                            : AppAssets.shelter,
                    title: index == 0
                        ? "Community Member"
                        : index == 1
                            ? 'Veterinarian'
                            : "Shelter",
                    onTap: () => context.pushNamed(
                      index == 0
                          ? RoutesNames.communityMemberSignup
                          : index == 1
                              ? RoutesNames.veterinarianSignup
                              : RoutesNames.shelterSignup,
                    ),
                  ),
                ),
              ),

              ///
              ///======================== Terms And Policy =================
              ///
              SizedBox(height: 250.h),
              TermsAndPolicy(),
            ],
          ),
        ),
      ),
    );
  }
}
