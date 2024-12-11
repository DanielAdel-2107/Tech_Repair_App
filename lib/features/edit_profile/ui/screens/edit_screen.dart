import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:tech_repair_app/app/my_app.dart';
import 'package:tech_repair_app/core/assets/colors/app_colors.dart';
import 'package:tech_repair_app/core/helpers/custom_app_bar.dart';
import 'package:tech_repair_app/core/networking/database/get_user_data.dart';
import 'package:tech_repair_app/core/routing/route_names.dart';
import 'package:tech_repair_app/core/widgets/custom_elevated_button.dart';
import 'package:tech_repair_app/core/widgets/custom_icon_button.dart';
import 'package:tech_repair_app/core/widgets/custom_text_form_field.dart';
import 'package:tech_repair_app/features/edit_profile/logic/edit_screen_provider.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar(
          title: 'Edit Profile',
          onPressed: () => context.push(RouteNames.more)),
      body: const EditProfileScreenBody(),
    );
  }
}

class EditProfileScreenBody extends StatelessWidget {
  const EditProfileScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => EditProfileProvider(),
      child: Consumer<EditProfileProvider>(
        builder: (context, provider, child) {
          return provider.isDataLoaded
              ? Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomUserImage(
                        provider: provider,
                      ),
                      Gap(70.h),
                      const Text('Full Name'),
                      const Gap(5),
                      CustomTextFormField(
                        inLineBorder: true,
                        hintText: provider.userModel.userName,
                      ),
                      const Gap(20),
                      const Text('Email'),
                      const Gap(5),
                      CustomTextFormField(
                        inLineBorder: true,
                        hintText: provider.userModel.userEmail,
                      ),
                      Gap(20.h),
                      const Text('Mobile Number'),
                      Gap(5.h),
                      CustomTextFormField(
                        inLineBorder: true,
                        hintText: provider.userModel.userPhoneNumber,
                      ),
                      Gap(70.h),
                      CustomElevatedButton(
                        label: 'Save Changes',
                        onPressed: () {
                          GetData.getUserData();
                        },
                      )
                    ],
                  ),
                )
              : const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

class CustomUserImage extends StatelessWidget {
  const CustomUserImage({
    super.key,
    required this.provider,
  });
  final EditProfileProvider provider;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          const CircleAvatar(
            radius: 80,
            child: Icon(
              Icons.person,
              size: 90,
              color: Colors.grey,
            ),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: CircleAvatar(
              backgroundColor: AppColors.blueColor,
              child: CustomIconButton(
                icon: Icons.edit,
                onPressed: () => provider.pickImage(ImageSource.camera),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ChooseImageButton extends StatelessWidget {
  const ChooseImageButton(
      {super.key, this.onTap, required this.label, required this.icon});
  final Function()? onTap;
  final String label;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 60,
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [Icon(icon), Text(label)],
        ),
      ),
    );
  }
}
