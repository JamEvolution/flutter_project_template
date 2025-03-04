import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: AppColors.primary,
      colorScheme: ColorScheme.light(
        primary: AppColors.primary,
        primaryContainer: AppColors.primaryContainer,
        secondary: AppColors.secondary,
        secondaryContainer: AppColors.secondaryContainer,
        surface: AppColors.surface,
        error: AppColors.error,
        onPrimary: AppColors.onPrimary,
        onSecondary: AppColors.onSecondary,
        onSurface: AppColors.onSurface,
        onError: AppColors.onError,
      ),
      scaffoldBackgroundColor: AppColors.background,
      textTheme: TextTheme(
        displayLarge: TextStyle(
            color: AppColors.onPrimary,
            fontSize: 24,
            fontWeight: FontWeight.bold),
        bodyLarge: TextStyle(color: AppColors.onBackground, fontSize: 16),
      ),
      appBarTheme: AppBarTheme(
        color: AppColors.primary,
        iconTheme: IconThemeData(color: AppColors.onPrimary),
        titleTextStyle: TextStyle(
          color: AppColors.onPrimary,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: AppColors.primary,
        textTheme: ButtonTextTheme.primary,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(AppColors.primary),
          foregroundColor: WidgetStateProperty.all(AppColors.onPrimary),
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      primaryColor: AppColors.primary,
      colorScheme: ColorScheme.dark(
        primary: AppColors.primary,
        primaryContainer: AppColors.primaryContainer,
        secondary: AppColors.secondary,
        secondaryContainer: AppColors.secondaryContainer,
        surface: AppColors.surface,
        error: AppColors.error,
        onPrimary: AppColors.onPrimary,
        onSecondary: AppColors.onSecondary,
        onSurface: AppColors.onSurface,
        onError: AppColors.onError,
      ),
      scaffoldBackgroundColor: AppColors.onBackground,
      textTheme: TextTheme(
        displayLarge: TextStyle(
            color: AppColors.onPrimary,
            fontSize: 24,
            fontWeight: FontWeight.bold),
        bodyLarge: TextStyle(color: AppColors.background, fontSize: 16),
      ),
      appBarTheme: AppBarTheme(
        color: AppColors.primary,
        iconTheme: IconThemeData(color: AppColors.onPrimary),
        titleTextStyle: TextStyle(
          color: AppColors.onPrimary,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: AppColors.primary,
        textTheme: ButtonTextTheme.primary,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(AppColors.primary),
          foregroundColor: WidgetStateProperty.all(AppColors.onPrimary),
        ),
      ),
    );
  }
}
