import 'package:flutter/material.dart';

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
