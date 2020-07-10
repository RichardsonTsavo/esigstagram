// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'HomeStore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStore, Store {
  final _$isLoadedAtom = Atom(name: '_HomeStore.isLoaded');

  @override
  bool get isLoaded {
    _$isLoadedAtom.reportRead();
    return super.isLoaded;
  }

  @override
  set isLoaded(bool value) {
    _$isLoadedAtom.reportWrite(value, super.isLoaded, () {
      super.isLoaded = value;
    });
  }

  final _$getApiAsyncAction = AsyncAction('_HomeStore.getApi');

  @override
  Future<Map<dynamic, dynamic>> getApi() {
    return _$getApiAsyncAction.run(() => super.getApi());
  }

  @override
  String toString() {
    return '''
isLoaded: ${isLoaded}
    ''';
  }
}
