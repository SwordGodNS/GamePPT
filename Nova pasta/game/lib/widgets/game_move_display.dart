import 'package:flutter/material.dart';

class GameMoveDisplay extends StatelessWidget {
  final String label;
  final String move;

  const GameMoveDisplay({super.key, required this.label, required this.move});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 260,
          height: 100,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('assets/images/jogadafundo2.png'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(0),
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontFamily: 'RetroGaming',
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('assets/images/resultado.png'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: move != ''
                ? FittedBox(
                    fit: BoxFit.contain,
                    child: Image.asset(
                      'assets/images/${move.toLowerCase()}.png',
                      width: move == 'Papel' ? 60 : (move == 'Pedra' ? 100 : 80),
                      height: move == 'Papel' ? 50 : (move == 'Pedra' ? 100 : 80),
                    ),
                  )
                : Container(),
          ),
        ),
      ],
    );
  }
}