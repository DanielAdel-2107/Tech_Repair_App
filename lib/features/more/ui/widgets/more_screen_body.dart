import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:tech_repair_app/core/assets/colors/app_colors.dart';
import 'package:tech_repair_app/features/more/ui/widgets/custom_list_tile.dart';
import 'package:tech_repair_app/features/more/ui/widgets/invite_friend.dart';
import 'package:tech_repair_app/features/more/ui/widgets/user_details_card.dart';

class MoreScreenBody extends StatelessWidget {
  const MoreScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const UserDetailsCard(),
            Gap(10.h),
            const InviteFrieds(),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 32.0),
              child: Divider(
                thickness: 5,
                color: AppColors.greyColor,
              ),
            ),
            const CustomListTile(
              icon: Icons.payment,
              title: 'Payment',
              color: AppColors.blueColor,
            ),
            CustomListTile(
              icon: Icons.location_on,
              title: 'Saved Addresses',
              color: Colors.blueGrey[900]!,
            ),
            CustomListTile(
              icon: Icons.star_rate_rounded,
              title: 'Rate our app',
              color: Colors.yellow[600]!,
            ),
            CustomListTile(
              icon: Icons.info,
              title: 'About Us',
              color: Colors.blue[300]!,
            )
          ],
        ),
      ),
    );
  }
}
