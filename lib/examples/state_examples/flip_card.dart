import 'package:flutter/material.dart';

class MemoryCardApp extends StatelessWidget {
  const MemoryCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: MemoryCard()),
    );
  }
}

class MemoryCard extends StatefulWidget {
  const MemoryCard({super.key});

  @override
  State<MemoryCard> createState() => _MemoryCardState();
}

class _MemoryCardState extends State<MemoryCard> {
  bool _isFlipped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: _isFlipped ? const BackCard() : const FrontCard(),
      onTap: () {
        setState(() {
          _isFlipped = !_isFlipped;
        });
      },
    );
  }
}

class FrontCard extends StatelessWidget {
  const FrontCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(width: 200, height: 200, color: Colors.blue));
  }
}

class BackCard extends StatelessWidget {
  const BackCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(width: 200, height: 200, color: Colors.green));
  }
}
