import 'dart:async';
import 'package:bar_code_scanner/app_widget.dart';
import 'package:bar_code_scanner/core/service_locator/app_module.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await setupLibraries();
  runApp(const AppWidget());
}

Future<void> setupLibraries() async {
  // Initialize service locator
  AppModule.initLocator();
}
