import 'package:dartz/dartz.dart';

abstract class CodeScanner {
  Future<Either<Exception, String>> getBarCode();
  Future<Either<Exception, String>> getQRCode();
}
