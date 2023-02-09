import 'package:bar_code_scanner/core/service_locator/scanner_module.dart';
import 'package:get_it/get_it.dart';

class AppModule {
  static final GetIt locator = GetIt.instance;

  static void initLocator() {
    ScannerModule.init();
  }
}
