import 'package:bar_code_scanner/core/routes/app_routes.dart';
import 'package:bar_code_scanner/core/routes/named_routes.dart';
import 'package:bar_code_scanner/core/theme/app_theme_data.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemeData.theme(context),
      routes: AppRoutes.routes(context),
      initialRoute: NamedRoute.home,
    );
  }
}
