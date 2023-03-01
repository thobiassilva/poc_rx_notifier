import 'package:flutter/material.dart';
import 'package:poc_rx_notifier/cards/stores/card.store.dart';
import 'package:rx_notifier/rx_notifier.dart';

class CardWidget extends StatefulWidget {
  final CardStore cardStore;
  const CardWidget({
    Key? key,
    required this.cardStore,
  }) : super(key: key);

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  CardStore get cardStore => widget.cardStore;

  @override
  Widget build(BuildContext context) {
    context.select(() => [cardStore.count]);

    return Card(
      child: AspectRatio(
        aspectRatio: 1,
        child: Scaffold(
          body: Center(
            child: Text('${cardStore.count}'),
          ),
          floatingActionButton: FloatingActionButton.small(
            onPressed: cardStore.increment,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
