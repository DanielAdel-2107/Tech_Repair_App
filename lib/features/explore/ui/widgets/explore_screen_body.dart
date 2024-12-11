import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:tech_repair_app/core/assets/styles/app_styles.dart';
import 'package:tech_repair_app/core/widgets/custom_text_button.dart';
import 'package:tech_repair_app/features/explore/ui/widgets/browse_categories.dart';
import 'package:tech_repair_app/features/explore/ui/widgets/explore_app_bar.dart';
import 'package:tech_repair_app/features/explore/ui/widgets/popular_services.dart';
import 'package:tech_repair_app/features/explore/ui/widgets/services_title.dart';

class ExploreScreenBody extends StatelessWidget {
  const ExploreScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ExploreAppBar(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const ServicesTitle(
                title: 'Popular Services',
              ),
              Gap(20.h),
              const PopularServices(),
              Gap(30.h),
              const ServicesTitle(
                title: 'Browse all categories',
              ),
              Gap(20.h),
              const BrowseCategories(),
            ],
          ),
        ),
        const Spacer(),
        const Text(
          "Don't see what you are looking for ?",
          style: AppStyles.body,
        ),
        CustomTextButton(
          label: 'View all services',
          onPressed: () {},
        ),
        const Spacer()
      ],
    );
  }
}
