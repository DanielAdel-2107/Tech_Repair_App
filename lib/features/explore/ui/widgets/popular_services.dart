import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_repair_app/core/assets/colors/app_colors.dart';
import 'package:tech_repair_app/core/assets/images/app_images.dart';
import 'package:tech_repair_app/core/assets/styles/app_styles.dart';

class PopularServices extends StatelessWidget {
  const PopularServices({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170.h,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return SizedBox(
              width: 220.w,
              height: 100.h,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 130.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  AppImages.cleaningTheHouseImage,
                                ),
                              )),
                        ),
                        const Text(
                          'Cleaning the house',
                          style: AppStyles.bodyText,
                        ),
                      ],
                    ),
                    const Positioned(
                      right: 5,
                      top: 5,
                      child: CircleAvatar(
                          backgroundColor: AppColors.whiteColor,
                          radius: 13,
                          child: Icon(
                            Icons.favorite_border,
                            color: AppColors.blackColor,
                            size: 18,
                          )),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
