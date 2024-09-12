import 'package:flutter/material.dart';

class GameButton extends StatelessWidget {
  final String move;
  final Function(String) onMoveSelected;
  final double paperWidth;  // Novo parâmetro
  final double paperHeight; // Novo parâmetro

  const GameButton({
    super.key,
    required this.move,
    required this.onMoveSelected,
    this.paperWidth = 60,   // Valor padrão
    this.paperHeight = 90,  // Valor padrão
  });

  @override
  Widget build(BuildContext context) {
    double imageWidth = 100;
    double imageHeight = 100;

    if (move == 'Papel') {
      imageWidth = paperWidth;  // Usa o parâmetro
      imageHeight = paperHeight; // Usa o parâmetro
    } else if (move == 'Pedra') {
      imageWidth = 100;
      imageHeight = 100;
    } else if (move == 'Tesoura') {
      imageWidth = 100;
      imageHeight = 100;
    }

    return Expanded(
      child: GestureDetector(
        onTap: () => onMoveSelected(move),
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('assets/images/escolhafundo.png'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Image.asset(
              'assets/images/${move.toLowerCase()}.png',
              width: imageWidth,
              height: imageHeight,
            ),
          ),
        ),
      ),
    );
  }
}
