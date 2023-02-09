import 'package:bar_code_scanner/core/theme/text_theme_data.dart';
import 'package:flutter/material.dart';

class AppThemeData {
  static ThemeData theme(context) => ThemeData(
        useMaterial3: true,
        textTheme: TextThemeData.theme,
      );
}
