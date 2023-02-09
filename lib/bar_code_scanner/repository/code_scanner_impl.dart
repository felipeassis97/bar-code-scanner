import 'package:bar_code_scanner/bar_code_scanner/repository/code_scanner.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class CodeScannerImpl implements CodeScanner {
  final FlutterBarcodeScanner codeScanner;
  CodeScannerImpl({required this.codeScanner});

  @override
  Future<Either<Exception, String>> getBarCode() async {
    try {
      final response = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.BARCODE);
      return right(response);
    } catch (_) {
      return left(Exception());
    }
  }

  @override
  Future<Either<Exception, String>> getQRCode() async {
    try {
      final response = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.QR);
      return right(response);
    } catch (_) {
      return left(Exception());
    }
  }
}
