import 'package:class_examples/examples/provider/quote_app_v2/add_quote.dart';
import 'package:class_examples/examples/provider/quote_app_v2/quote_list.dart';
import 'package:class_examples/examples/provider/quote_app_v2/quotes_view.dart';
import 'package:flutter/material.dart';

class QuoteAppV3 extends StatelessWidget {
  const QuoteAppV3({super.key});

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
