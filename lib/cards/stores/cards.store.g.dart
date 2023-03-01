// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cards.store.dart';

// **************************************************************************
// RxGenerator
// **************************************************************************

class CardsStore = _CardsStore with _CardsStoreMixin;

mixin _CardsStoreMixin on _CardsStore {
  ///
  /// GENERATED cards(RxList<dynamic>)
  ///

  late final _cardsRx = RxNotifier<RxList<CardStore>>(super.cards);
  ValueListenable<RxList<CardStore>> get cardsListenable => _cardsRx;

  @override
  set cards(RxList<CardStore> _cardsValue) => _cardsRx.value = _cardsValue;
  @override
  RxList<CardStore> get cards => _cardsRx.value;
}
