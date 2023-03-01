// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app.store.dart';

// **************************************************************************
// RxGenerator
// **************************************************************************

class Configurations = _Configurations with _ConfigurationsMixin;

mixin _ConfigurationsMixin on _Configurations {
  ///
  /// GENERATED themeMode(ThemeMode)
  ///

  late final _themeModeRx = RxNotifier<ThemeMode>(super.themeMode);
  ValueListenable<ThemeMode> get themeModeListenable => _themeModeRx;

  @override
  set themeMode(ThemeMode _themeModeValue) =>
      _themeModeRx.value = _themeModeValue;
  @override
  ThemeMode get themeMode => _themeModeRx.value;
}
