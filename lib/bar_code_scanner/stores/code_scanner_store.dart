import 'package:bar_code_scanner/bar_code_scanner/repository/code_scanner.dart';
import 'package:mobx/mobx.dart';
part 'code_scanner_store.g.dart';

// ignore: library_private_types_in_public_api
class CodeScannerStore = _CodeScannerStoreBase with _$CodeScannerStore;

abstract class _CodeScannerStoreBase with Store {
  final CodeScanner codeScannerRepository;
  _CodeScannerStoreBase({required this.codeScannerRepository});

  @observable
  String? code;
  @action
  void setCode(String? value) => code = value;

  Future<void> getQRCode() async {
    initialLoad();
    final result = await codeScannerRepository.getQRCode();
    setIsLoading(false);
    result.fold((_) => setError('Has error occurred!'),
        (response) => setCode(response));
  }

  Future<void> getBarCode() async {
    initialLoad();
    final result = await codeScannerRepository.getQRCode();
    setIsLoading(false);
    result.fold((_) => setError('Has error occurred!'),
        (response) => setCode(response));
  }

  //Feedbacks
  @observable
  bool isLoading = false;
  @action
  void setIsLoading(bool value) => isLoading = value;

  @observable
  String error = '';
  @action
  void setError(String value) => code = value;

  void initialLoad() {
    setCode(null);
    setError('');
    setIsLoading(true);
  }
}
