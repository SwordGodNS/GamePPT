import 'package:flutter/material.dart';

class GameResult extends StatelessWidget {
  final String result;

  const GameResult({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      height: 120,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('assets/images/resultadofundo.png'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Resultado',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontFamily: 'RetroGaming',
            ),
          ),
          const SizedBox(height: 10),
          Text(
            result,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}