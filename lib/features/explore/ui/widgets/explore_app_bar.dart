import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:tech_repair_app/core/assets/colors/app_colors.dart';
import 'package:tech_repair_app/core/assets/styles/app_styles.dart';
import 'package:tech_repair_app/core/widgets/custom_text_form_field.dart';
import 'package:tech_repair_app/features/explore/ui/widgets/custom_search_delegate.dart';

class ExploreAppBar extends StatelessWidget {
  const ExploreAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height * 0.2,
      decoration: const BoxDecoration(color: AppColors.exploreAppBarColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Gap(15.h),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.whiteColor,
                    width: 1.5.w,
                  ),
                ),
                child: const Icon(
                  Icons.person,
                  color: AppColors.whiteColor,
                ),
              ),
              Gap(10.w),
              const Text('Good Afternoon, Jhon Doe',
                  style: AppStyles.whitestyle),
              const Spacer(),
              const Icon(Icons.notifications, color: AppColors.whiteColor),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: CustomTextFormField(
              onTap: () {
                showSearch(context: context, delegate: CustomSearchDelegate());
              },
              hintText: "Search for 'Indoor Cleaning'",
              prefixIcon: Icon(Icons.search),
              borderRadius: 46,
            ),
          ),
        ],
      ),
    );
  }
}
