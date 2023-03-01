import 'package:rx_notifier/rx_notifier.dart';

part 'card.store.g.dart';

@RxStore()
abstract class _CardStore {
  @RxValue()
  int count = 0;

  final increment = RxAction();
}
