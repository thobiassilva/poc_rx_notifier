import 'package:flutter/material.dart';
import 'package:poc_rx_notifier/cards/stores/cards.store.dart';
import 'package:rx_notifier/rx_notifier.dart';

import '../stores/card.store.dart';
import 'card.widget.dart';

class CardsPage extends StatefulWidget {
  final CardsStore cardsStore;

  const CardsPage({
    Key? key,
    required this.cardsStore,
  }) : super(key: key);

  @override
  State<CardsPage> createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {
  CardsStore get cardsStore => widget.cardsStore;

  Widget mapFromCardStore(CardStore cardStore) {
    return CardWidget(cardStore: cardStore);
  }

  @override
  Widget build(BuildContext context) {
    context.select(() => [cardsStore.cards]);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Count Page'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: cardsStore.cards.map(mapFromCardStore).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: cardsStore.add,
        tooltip: 'Add',
        child: const Icon(Icons.add),
      ),
    );
  }
}
