import 'package:flutter/material.dart';
import 'package:rx_notifier/rx_notifier.dart';

import 'reducers/cards.reducer.dart';
import 'stores/cards.store.dart';
import 'view/cards.page.dart';

late final CardsStore cardsStore;
late final CardsReducer cardsReducer;
void main() {
  cardsStore = CardsStore();
  cardsReducer = CardsReducer(cardsStore);

  runApp(
    const RxRoot(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: CardsPage(cardsStore: cardsStore),
    );
  }
}
