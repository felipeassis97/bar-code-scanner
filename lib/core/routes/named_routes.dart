import 'package:bar_code_scanner/bar_code_scanner/view/pages/scanner_page.dart';
import 'package:bar_code_scanner/core/routes/app_routes.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes(_) {
    return {
      NamedRoute.home: (_) => ScannerPage(),
    };
  }
}
