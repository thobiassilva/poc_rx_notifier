import 'package:rx_notifier/rx_notifier.dart';

import '../stores/card.store.dart';
import '../stores/cards.store.dart';
import 'card.reducer.dart';

class CardsReducer extends RxReducer {
  final CardsStore cardsStore;

  CardsReducer(this.cardsStore) {
    on(() => [cardsStore.add], _add);
  }

  void _add() {
    final cardStore = CardStore();
    final cardReducer = CardReducer(cardStore);
    cardsStore.cards.add(cardStore);
  }
}
