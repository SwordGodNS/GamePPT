import 'package:flutter/material.dart';
import 'game_button.dart';

class GameControls extends StatelessWidget {
  final Function(String) onMoveSelected;

  const GameControls({super.key, required this.onMoveSelected});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GameButton(move: 'Pedra', onMoveSelected: onMoveSelected),
        GameButton(move: 'Papel', onMoveSelected: onMoveSelected),
        GameButton(move: 'Tesoura', onMoveSelected: onMoveSelected),
      ],
    );
  }
}