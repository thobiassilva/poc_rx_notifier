// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'count.store.dart';

// **************************************************************************
// RxGenerator
// **************************************************************************

class CountStore = _CountStore with _CountStoreMixin;

mixin _CountStoreMixin on _CountStore {
  ///
  /// GENERATED count(int)
  ///

  late final _countRx = RxNotifier<int>(super.count);
  ValueListenable<int> get countListenable => _countRx;

  @override
  set count(int _countValue) => _countRx.value = _countValue;
  @override
  int get count => _countRx.value;
}
