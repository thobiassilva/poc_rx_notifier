import 'package:flutter/material.dart';
import 'package:poc_rx_notifier/count/stores/count.store.dart';
import 'package:rx_notifier/rx_notifier.dart';

class CountPage extends StatefulWidget {
  final CountStore store;

  const CountPage({
    Key? key,
    required this.store,
  }) : super(key: key);

  @override
  State<CountPage> createState() => _CountPageState();
}

class _CountPageState extends State<CountPage> {
  CountStore get store => widget.store;

  @override
  Widget build(BuildContext context) {
    context.select(() => [store.count]);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Count Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${store.count}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: store.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
