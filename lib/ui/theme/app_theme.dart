import 'package:flutter/material.dart';

import '/ui/theme/colors.dart';

class AppTheme {
  const AppTheme({
    required this.mode,
    required this.data,
  });

  factory AppTheme.light() {
    const mode = ThemeMode.light;
    final colorScheme = AppColors.light;
    final themeData = ThemeData.light().copyWith(
      colorScheme: colorScheme,
    );
    return AppTheme(
      mode: mode,
      data: themeData,
    );
  }

  final ThemeMode mode;
  final ThemeData data;
}
