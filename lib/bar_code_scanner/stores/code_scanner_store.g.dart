// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_scanner_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CodeScannerStore on _CodeScannerStoreBase, Store {
  late final _$codeAtom =
      Atom(name: '_CodeScannerStoreBase.code', context: context);

  @override
  String? get code {
    _$codeAtom.reportRead();
    return super.code;
  }

  @override
  set code(String? value) {
    _$codeAtom.reportWrite(value, super.code, () {
      super.code = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_CodeScannerStoreBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$errorAtom =
      Atom(name: '_CodeScannerStoreBase.error', context: context);

  @override
  String get error {
    _$errorAtom.reportRead();
    return super.error;
  }

  @override
  set error(String value) {
    _$errorAtom.reportWrite(value, super.error, () {
      super.error = value;
    });
  }

  late final _$_CodeScannerStoreBaseActionController =
      ActionController(name: '_CodeScannerStoreBase', context: context);

  @override
  void setCode(String? value) {
    final _$actionInfo = _$_CodeScannerStoreBaseActionController.startAction(
        name: '_CodeScannerStoreBase.setCode');
    try {
      return super.setCode(value);
    } finally {
      _$_CodeScannerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoading(bool value) {
    final _$actionInfo = _$_CodeScannerStoreBaseActionController.startAction(
        name: '_CodeScannerStoreBase.setIsLoading');
    try {
      return super.setIsLoading(value);
    } finally {
      _$_CodeScannerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setError(String value) {
    final _$actionInfo = _$_CodeScannerStoreBaseActionController.startAction(
        name: '_CodeScannerStoreBase.setError');
    try {
      return super.setError(value);
    } finally {
      _$_CodeScannerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
code: ${code},
isLoading: ${isLoading},
error: ${error}
    ''';
  }
}
