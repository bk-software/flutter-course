import 'package:flutter/material.dart';

class QuoteAppV1 extends StatelessWidget {
  const QuoteAppV1({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      const QuotesView(),
      const AddQuote(),
      const QuoteList(),
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Provider Example'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: pages[2],
        bottomNavigationBar: NavigationBar(
          selectedIndex: 0,
          onDestinationSelected: (int index) {
            print('page index $index');
          },
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.add), label: 'Add'),
            NavigationDestination(icon: Icon(Icons.list), label: 'List'),
          ],
        ),
      ),
    );
  }
}

class QuotesView extends StatelessWidget {
  const QuotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        color: Colors.amberAccent,
        child: const Center(child: Text('MY app')),
      ),
    );
  }
}

class AddQuote extends StatelessWidget {
  const AddQuote({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        color: Colors.redAccent,
        child: const Center(child: Text('Add quote')),
      ),
    );
  }
}

class QuoteList extends StatelessWidget {
  const QuoteList({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        color: Colors.blue.shade300,
        child: const Center(child: Text('Quote List')),
      ),
    );
  }
}
