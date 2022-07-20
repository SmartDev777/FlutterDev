import 'dart:js';

import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../app_constants.dart';

appLargeTitle(text) {
  return Text(
    text,
    style: TextStyle(
        fontSize: 51, fontFamily: 'Abril Fatface', color: Colors.white),
  );
}

appPrimaryText(text) {
  return Text(
    text,
    style:
        TextStyle(fontWeight: FontWeight.bold, color: AppColors.primary_color),
  );
}

appTitle(text) {
  return Text(
    text,
    style: TextStyle(
        fontSize: 35, fontFamily: 'Abril Fatface', color: Colors.black),
  );
}

appTextField(hint, icon, controller) {
  return TextField(
    controller: controller,
    textAlign: TextAlign.center,
    decoration: InputDecoration(
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(24.0),
        ),
        filled: true,
        hintStyle: TextStyle(
            color: Color(0xff919191), fontFamily: 'Roboto', fontSize: 16),
        hintText: hint,
        fillColor: AppColors.textfiled_bg),
  );
}

appBorderTextFieldNoIcon(hint) {
  return TextField(
    textAlign: TextAlign.start,
    decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12.0),
        ),
        filled: true,
        hintStyle: TextStyle(
            color: AppColors.secondary_textcolor,
            fontFamily: 'Roboto',
            fontSize: 16),
        hintText: hint,
        fillColor: AppColors.textfiled_bg),
  );
}

appBorderTextField(hint, icon) {
  return TextField(
    textAlign: TextAlign.start,
    decoration: InputDecoration(
        prefixIcon: Icon(icon),
        suffixIcon: Icon(Icons.close),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12.0),
        ),
        filled: true,
        hintStyle: TextStyle(
            color: AppColors.secondary_textcolor,
            fontFamily: 'Roboto',
            fontSize: 16),
        hintText: hint,
        fillColor: AppColors.textfiled_bg),
  );
}

appRoundedButton(text, onPress) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: AppColors.btn_color,
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6), // <-- Radius
        ),
      ),
      onPressed: onPress,
      child: Text(
        text,
      ));
}

appSimpleRoundedButton(text, onPress) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: AppColors.btn_color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6), // <-- Radius
        ),
      ),
      onPressed: onPress,
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ));
}

appSmallText(text) {
  return Text(
    text,
    style: TextStyle(fontFamily: 'Raleway', fontSize: 17, color: Colors.white),
  );
}

appSecondaryText(text) {
  return Text(
    text,
    style: TextStyle(
        fontFamily: 'Raleway',
        fontSize: 14,
        color: AppColors.secondary_textcolor),
  );
}

appDescText(text) {
  return Text(
    text,
    style: TextStyle(
        fontFamily: 'Raleway',
        fontSize: 14,
        color: AppColors.primary_textcolor),
  );
}

replaceToNewScreen(ctx, screen) {
  Navigator.pushReplacement(
    ctx,
    MaterialPageRoute(builder: (ctx) => screen),
  );
}

appOutlineCircleImage(String imagePath, {double radius = 20.0}) {
  return CircleAvatar(
    radius: radius,
    backgroundColor: AppColors.primary_color,
    child: CircleAvatar(
      radius: radius - 2,
      backgroundImage: AssetImage('${AppConstant.images_path}$imagePath'),
    ),
  );
}

appCircleImage(String imagePath, {double radius = 20.0}) {
  return CircleAvatar(
    radius: radius,
    backgroundImage: AssetImage('${AppConstant.images_path}$imagePath'),
  );
}
