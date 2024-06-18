import 'package:class_examples/examples/provider/quote_app_v2/add_quote.dart';
import 'package:class_examples/examples/provider/quote_app_v2/quote_list.dart';
import 'package:class_examples/examples/provider/quote_app_v2/quotes_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PageProvider with ChangeNotifier {
  int _currentPageIndex = 1;

  int get currentPageIndex => _currentPageIndex;

  void setPage(int newPageIndex) {
    _currentPageIndex = newPageIndex;
    notifyListeners();
  }
}

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
      home: ChangeNotifierProvider(
        create: (_) => PageProvider(),
        child: Consumer<PageProvider>(
          builder: (context, pageProvider, _) => Scaffold(
            appBar: AppBar(
              title: const Text('Provider Example'),
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
            body: pages[pageProvider.currentPageIndex],
            bottomNavigationBar: NavigationBar(
              selectedIndex: pageProvider.currentPageIndex,
              onDestinationSelected: (int index) {
                print('page index $index');
                pageProvider.setPage(index);
              },
              destinations: const [
                NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
                NavigationDestination(icon: Icon(Icons.add), label: 'Add'),
                NavigationDestination(icon: Icon(Icons.list), label: 'List'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Page extends StatelessWidget {
  const Page({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      const QuotesView(),
      const AddQuote(),
      const QuoteList(),
    ];
    return pages[2];
  }
}
