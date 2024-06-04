import 'package:flutter/material.dart';

class MemoryGameApp extends StatelessWidget {
  const MemoryGameApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: GameBoard()),
    );
  }
}

class GameBoard extends StatefulWidget {
  const GameBoard({super.key});

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  List<bool> flippedCards = [false, false];

  void flipCard(int index) {
    setState(() {
      flippedCards[index] = !flippedCards[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MemoryCard(index: 0, isFlipped: flippedCards[0], flipCard: flipCard),
        const SizedBox(height: 20),
        MemoryCard(index: 1, isFlipped: flippedCards[1], flipCard: flipCard),
      ],
    );
  }
}

class MemoryCard extends StatelessWidget {
  final int index;
  final bool isFlipped;
  final void Function(int index) flipCard;

  const MemoryCard(
      {required this.index,
      required this.isFlipped,
      super.key,
      required this.flipCard});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: isFlipped ? const BackCard() : const FrontCard(),
      onTap: () {
        flipCard(index);
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
