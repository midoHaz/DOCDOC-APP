import 'package:advanced_sessions/core/theming/colors.dart';
import 'package:advanced_sessions/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final String hintText;
  final bool? isObsecure;
  final TextStyle? hintStyle;
  final TextStyle? inputTextStyle;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final Function(String?) validator;
  const AppTextFormField(
      {super.key,
      this.backgroundColor,
      this.contentPadding,
      this.focusedBorder,
      this.enabledBorder,
      required this.hintText,
      this.isObsecure,
      this.hintStyle,
      this.inputTextStyle,
      this.suffixIcon,
      this.controller,
      required this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        fillColor: backgroundColor ?? ColorManager.backGray,
        filled: true,
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: hintStyle ?? TextStyles.font14regularLightGray,
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide:
                  const BorderSide(color: ColorManager.mainBlue, width: 1.3),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide:
                  const BorderSide(color: ColorManager.lighterGray, width: 1.3),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide:
                  const BorderSide(color: Colors.red, width: 1.3),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide:
                  const BorderSide(color: Colors.red, width: 1.3),
            ),
      ),
      obscureText: isObsecure ?? false,
      style: inputTextStyle ?? TextStyles.font14regularDarkBlue,
      validator: (value) => validator(value),  
    );
  }
}
