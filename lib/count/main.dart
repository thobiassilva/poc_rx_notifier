import 'package:flutter/material.dart';
import 'package:rx_notifier/rx_notifier.dart';

import 'app.store.dart';
import 'root.reducer.dart';
import 'view/count.page.dart';

void main() {
  final appStore = AppStore();
  createReducers(appStore);

  runApp(
    RxRoot(
      child: MyApp(
        appStore: appStore,
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  final AppStore appStore;
  const MyApp({
    Key? key,
    required this.appStore,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: CountPage(store: appStore.components.count),
    );
  }
}
