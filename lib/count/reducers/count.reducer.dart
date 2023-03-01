import 'package:rx_notifier/rx_notifier.dart';

import '../app.store.dart';
import '../stores/count.store.dart';

class CountReducer extends RxReducer {
  final AppStore appStore;

  CountStore get store => appStore.components.count;

  CountReducer(this.appStore) {
    on(() => [store.increment], _increment);
    on(() => [store.decrement], _decrement);
  }

  void _increment() => store.count++;
  void _decrement() => store.count--;
}
