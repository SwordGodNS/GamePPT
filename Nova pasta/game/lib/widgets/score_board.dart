import 'package:flutter/material.dart';

class ScoreBoard extends StatelessWidget {
  final int playerScore;
  final int computerScore;

  const ScoreBoard({
    super.key,
    required this.playerScore,
    required this.computerScore,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('assets/images/scoreboardbackground.png'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          const Text(
            'Placar',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Text('VOCÊ', style: TextStyle(fontSize: 16)),
                  Text(
                    playerScore.toString(),
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  const Text('INIMIGO', style: TextStyle(fontSize: 16)),
                  Text(
                    computerScore.toString(),
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}