import 'package:flutter/material.dart';
import 'package:rx_notifier/rx_notifier.dart';

import 'stores/count.store.dart';

part 'app.store.g.dart';

class AppStore {
  final components = Components();
  final config = Configurations();
}

@RxStore()
abstract class _Configurations {
  @RxValue()
  ThemeMode themeMode = ThemeMode.light;
}

class Components {
  final count = CountStore();
}
