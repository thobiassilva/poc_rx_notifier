import 'package:rx_notifier/rx_notifier.dart';

import 'card.store.dart';

part 'cards.store.g.dart';

@RxStore()
abstract class _CardsStore {
  @RxValue()
  var cards = <CardStore>[].asRx();

  final add = RxAction();
}
