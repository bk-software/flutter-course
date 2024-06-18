import 'package:flutter/material.dart';

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
