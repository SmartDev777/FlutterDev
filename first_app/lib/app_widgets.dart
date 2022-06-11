import 'package:first_app/app_colors.dart';
import 'package:flutter/material.dart';

import 'app_strings.dart';

AppTextStyle(text) {
  return Text(
    text,
    style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        fontFamily: AppStrings.app_font),
  );
}

smallTextStyle(text) {
  return Text(
    text,
    style: TextStyle(
        fontSize: 12,
        color: AppColors.small_text_color,
        fontFamily: AppStrings.app_font),
  );
}

mediumTextStyle(text) {
  return Text(
    text,
    style: TextStyle(
        fontSize: 16,
        color: AppColors.medium_text_color,
        fontFamily: AppStrings.app_font),
  );
}

largeTextStyle(text) {
  return Text(
    text,
    style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
        color: AppColors.large_text_color,
        fontFamily: AppStrings.app_font),
  );
}

titleTextStyle(text) {
  return Text(
    text,
    style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: AppColors.large_text_color,
        fontFamily: AppStrings.app_font),
  );
}

VerticalSpace({double height = 20}) {
  return SizedBox(
    height: height,
  );
}

HorizontalSpace({double w = 20}) {
  return SizedBox(
    width: w,
  );
}

roudedBox({Color color = AppColors.container_bg_color}) {
  return BoxDecoration(borderRadius: BorderRadius.circular(10), color: color);
}

getInputDecoration(hint, sufIcon) {
  return InputDecoration(
      suffixIcon: Image.asset(sufIcon),
      hintText: hint,
      fillColor: AppColors.container_bg_color,
      filled: true,
      hintStyle: TextStyle(
        color: AppColors.primary_text_color,
        fontFamily: AppStrings.app_font,
        fontSize: 16,
      ),
      border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(30)));
}

AppSmallTextStyle(text) {
  return Text(
    text,
    style: TextStyle(
        overflow: TextOverflow.ellipsis,
        fontSize: 14,
        color: AppColors.small_text_color,
        fontFamily: AppStrings.app_font),
  );
}

buttonRoundedStyle(color) {
  return ElevatedButton.styleFrom(
    primary: color,
    textStyle: TextStyle(fontFamily: AppStrings.app_font),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30), // <-- Radius
    ),
  );
}
