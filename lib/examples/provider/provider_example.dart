import 'package:flutter/material.dart';

class ProviderExampleApp extends StatelessWidget {
  const ProviderExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Provider Example'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.amberAccent,
            child: const Center(child: Text('MY app')),
          ),
        ),
        bottomNavigationBar: NavigationBar(
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.add), label: 'Add'),
          ],
        ),
      ),
    );
  }
}
