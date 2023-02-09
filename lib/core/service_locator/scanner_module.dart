import 'package:bar_code_scanner/bar_code_scanner/repository/code_scanner.dart';
import 'package:bar_code_scanner/bar_code_scanner/repository/code_scanner_impl.dart';
import 'package:bar_code_scanner/bar_code_scanner/stores/code_scanner_store.dart';
import 'package:bar_code_scanner/core/service_locator/app_module.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScannerModule {
  static final locator = AppModule.locator;
  static void init() {
    //Plugin
    locator.registerFactory<FlutterBarcodeScanner>(
      () => FlutterBarcodeScanner(),
    );

    //Repository
    locator.registerFactory<CodeScanner>(
      () => CodeScannerImpl(
        codeScanner: locator<FlutterBarcodeScanner>(),
      ),
    );

    //Store
    locator.registerSingleton<CodeScannerStore>(
      CodeScannerStore(
        codeScannerRepository: locator<CodeScanner>(),
      ),
    );
  }
}
