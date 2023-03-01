import 'package:rx_notifier/rx_notifier.dart';

part 'count.store.g.dart';

@RxStore()
abstract class _CountStore {
  @RxValue()
  int count = 0;

  final increment = RxAction();
  final decrement = RxAction();
}
