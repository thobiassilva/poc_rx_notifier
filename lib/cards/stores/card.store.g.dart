// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.store.dart';

// **************************************************************************
// RxGenerator
// **************************************************************************

class CardStore = _CardStore with _CardStoreMixin;

mixin _CardStoreMixin on _CardStore {
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
