import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_repair_app/core/assets/images/app_images.dart';

class CustomServicesCard extends StatelessWidget {
  const CustomServicesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 150.h,
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemBuilder: (context, index) => Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                height: 70.h,
                width: 70.w,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(AppImages.cleaningTheHouseImage),
                    )),
              ),
              const Text('Cleaning')
            ],
          ),
          itemCount: 3,
          scrollDirection: Axis.horizontal,
        ));
  }
}
