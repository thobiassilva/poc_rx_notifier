import 'package:rx_notifier/rx_notifier.dart';

import '../stores/card.store.dart';

class CardReducer extends RxReducer {
  final CardStore cardStore;

  CardReducer(this.cardStore) {
    on(() => [cardStore.increment], _increment);
  }

  void _increment() => cardStore.count++;
}
