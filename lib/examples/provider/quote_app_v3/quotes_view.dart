import 'package:flutter/material.dart';

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
