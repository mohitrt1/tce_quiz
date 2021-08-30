import 'package:flutter/material.dart';

class AppConfig {
  static ThemeData getThemeData() {
    // AppColors colors = AppColors();
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: AppColors.primary,
      primaryColorDark: AppColors.primaryDark,
      accentColor: AppColors.primaryAccent,
      scaffoldBackgroundColor: AppColors.scaffoldBgColor,
      // iconTheme: new IconThemeData(
      //   color: Colors.grey[700],
      //   opacity: 1.0,
      //   size: 24.0,
      // ),
    );
  }
}


class AppColors {

  static const scaffoldBgColor = Color(0xFF003355);
  static const primary = Color(0xFF003355); //2D5AAD
  static const primaryDark = Color(0xFF003355);
  static const primaryAccent = Color(0xFFFFFFFF); //2D5AAD


  static const textColorNormal = Color(0xFFFFFFFF);
  static const textColorHeading = Color(0xFFDCDCDC);
}
