import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:tech_repair_app/core/assets/colors/app_colors.dart';
import 'package:tech_repair_app/core/widgets/custom_icon_button.dart';
import 'package:tech_repair_app/features/explore/ui/widgets/custom_services_card.dart';

class CustomSearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      CustomIconButton(
        icon: Icons.close,
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    CustomIconButton(
      icon: Icons.arrow_back_outlined,
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Text('data'),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Column(
      children: [
        Wrap(
          children: [
            CustomSuggestions(suggestions: 'Indoor Cleaning'),
            CustomSuggestions(suggestions: 'Electronical help'),
            CustomSuggestions(suggestions: 'Pliumbing Drain Repair'),
          ],
        ),
        Gap(30.h),
        const Divider(
          thickness: 3,
          color: AppColors.greyColor,
        ),
        const CustomServicesCard(),
        Expanded(
            child: Container(
          color: AppColors.greyColor,
        ))
      ],
    );
  }

  Container CustomSuggestions({required String suggestions}) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.blackColor),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(suggestions),
          CustomIconButton(
              icon: Icons.arrow_outward_outlined,
              onPressed: () {
                query = suggestions;
              })
        ],
      ),
    );
  }
}
