import 'dart:js';

import 'package:flutter/material.dart';

import '../app_colors.dart';

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
    style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xffFE2550)),
  );
}

appTitle(text) {
  return Text(
    text,
    style: TextStyle(
        fontSize: 35, fontFamily: 'Abril Fatface', color: Colors.black),
  );
}

appTextField(hint, icon) {
  return TextField(
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

appSmallText(text) {
  return Text(
    text,
    style: TextStyle(fontFamily: 'Raleway', fontSize: 17, color: Colors.white),
  );
}

appDescText(text) {
  return Text(
    text,
    style: TextStyle(fontFamily: 'Raleway', fontSize: 17, color: Colors.black),
  );
}

replaceToNewScreen(ctx, screen) {
  Navigator.pushReplacement(
    ctx,
    MaterialPageRoute(builder: (ctx) => screen),
  );
}
