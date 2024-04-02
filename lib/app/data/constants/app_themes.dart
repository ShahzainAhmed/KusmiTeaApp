import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Themes {
  static ThemeData primaryTheme = ThemeData(
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      elevation: 0.0,
    ),
    scaffoldBackgroundColor: Colors.white,
    // bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    //   backgroundColor: AppColors.kBackgroundColor,
    //   selectedItemColor: AppColors.kPrimaryColor,
    //   unselectedItemColor: AppColors.kGreyColor,
    // ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
    ),
  );
}

SystemUiOverlayStyle defaultOverlay = const SystemUiOverlayStyle(
  statusBarColor: Colors.transparent,
  systemStatusBarContrastEnforced: false,
  statusBarBrightness: Brightness.light,
  statusBarIconBrightness: Brightness.dark,
  systemNavigationBarColor: Colors.transparent,
  systemNavigationBarDividerColor: Colors.transparent,
  systemNavigationBarIconBrightness: Brightness.light,
);
