import 'package:flutter/material.dart';
import 'package:tech_repair_app/core/assets/colors/app_colors.dart';
import 'package:tech_repair_app/core/widgets/custom_icon_button.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    this.label,
    this.ispassword = false,
    this.controller,
    this.onChanged,
    this.prefixIcon,
    this.borderRadius = 8,
    this.hintText,
    this.onTap,
    this.inLineBorder = false,
  });
  final String? label;
  final String? hintText;
  final bool ispassword;
  final bool inLineBorder;

  final TextEditingController? controller;
  final Function(String)? onChanged;
  final Widget? prefixIcon;
  final double borderRadius;
  final Function()? onTap;
  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool password = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'this field is required';
        }
        return null;
      },
      onTap: widget.onTap,
      onChanged: widget.onChanged,
      controller: widget.controller,
      obscureText: widget.ispassword == true ? password : false,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(8),
          fillColor: AppColors.whiteColor,
          filled: true,
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.ispassword == true
              ? CustomIconButton(
                  icon: password == true
                      ? Icons.visibility_off
                      : Icons.visibility,
                  onPressed: () {
                    setState(() {
                      password = !password;
                    });
                  },
                )
              : null,
          label: widget.label != null ? Text(widget.label!) : null,
          hintText: widget.hintText,
          enabledBorder: widget.inLineBorder
              ? buildInlineBorder()
              : buildBorder(color: AppColors.greyColor),
          focusedBorder: buildBorder(color: AppColors.blueColor)),
    );
  }

  UnderlineInputBorder buildInlineBorder() {
    return UnderlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: AppColors.blackColor));
  }

  OutlineInputBorder buildBorder({Color? color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(widget.borderRadius),
      ),
      borderSide: BorderSide(
        color: color ?? AppColors.greyColor,
      ),
    );
  }
}
