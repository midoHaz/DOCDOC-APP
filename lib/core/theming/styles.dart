import 'package:advanced_sessions/core/theming/colors.dart';
import 'package:advanced_sessions/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font13regularGray = TextStyle(
      fontSize: 13.sp,
      color: ColorManager.gray,
      fontWeight: FontWeightHelper.regular);
  static TextStyle font13regularBlue = TextStyle(
      fontSize: 13.sp,
      color: ColorManager.mainBlue,
      fontWeight: FontWeightHelper.regular);
  static TextStyle font13semiBoldBlue = TextStyle(
      fontSize: 13.sp,
      color: ColorManager.mainBlue,
      fontWeight: FontWeightHelper.semiBold);
  static TextStyle font13regularDarkBlue = TextStyle(
      fontSize: 13.sp,
      color: ColorManager.darkBlue,
      fontWeight: FontWeightHelper.regular);
  static TextStyle font13MediumDarkBlue = TextStyle(
      fontSize: 13.sp,
      color: ColorManager.darkBlue,
      fontWeight: FontWeightHelper.medium);
  static TextStyle font14regularGray = TextStyle(
      fontSize: 14.sp,
      color: ColorManager.gray,
      fontWeight: FontWeightHelper.regular);

  static TextStyle font14regularLightGray = TextStyle(
      fontSize: 14.sp,
      color: ColorManager.lightGray,
      fontWeight: FontWeightHelper.regular);
  static TextStyle font14regularDarkBlue = TextStyle(
      fontSize: 14.sp,
      color: ColorManager.darkBlue,
      fontWeight: FontWeightHelper.regular);

  static TextStyle font16SemiBoldWhite = TextStyle(
      fontSize: 16.sp,
      color: Colors.white,
      fontWeight: FontWeightHelper.semiBold);

  static TextStyle font24BoldBlack = TextStyle(
      fontSize: 24.sp, color: Colors.black, fontWeight: FontWeightHelper.bold);
  static TextStyle font24BoldBlue = TextStyle(
      fontSize: 24.sp,
      color: ColorManager.mainBlue,
      fontWeight: FontWeightHelper.bold);

  static TextStyle font32BoldBlue = TextStyle(
      fontSize: 32.sp,
      color: ColorManager.mainBlue,
      fontWeight: FontWeightHelper.bold);
}
