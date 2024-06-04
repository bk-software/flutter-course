import 'package:flutter/material.dart';

class MyCounterApp extends StatelessWidget {
  const MyCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text('Counter Example')),
            body: const CounterExample()));
  }
}

class CounterExample extends StatefulWidget {
  const CounterExample({super.key});

  @override
  State<CounterExample> createState() => _CounterExampleState();
}

class _CounterExampleState extends State<CounterExample> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Counter Value'),
        Text(_counter.toString()),
        ElevatedButton(
            onPressed: () {
              print('you clicked me');
              setState(() {
                _counter += 1;
              });
              print(_counter);
            },
            child: const Text('increment'))
      ],
    );
  }
}
