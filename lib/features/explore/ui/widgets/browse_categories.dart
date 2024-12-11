import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_repair_app/core/assets/images/app_images.dart';
import 'package:tech_repair_app/core/assets/styles/app_styles.dart';

class BrowseCategories extends StatelessWidget {
  const BrowseCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90.h,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          padding: EdgeInsets.all(0),
          itemBuilder: (context, index) {
            return SizedBox(
              width: 100.w,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60.h,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                              AppImages.cleaningTheHouseImage,
                            ),
                          )),
                    ),
                    const Text(
                      'Plumbing',
                      style: AppStyles.bodyText,
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
