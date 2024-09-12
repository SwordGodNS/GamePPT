import 'package:flutter/material.dart';
import '../widgets/game_controls.dart';
import '../widgets/game_move_display.dart';
import '../widgets/game_result.dart';
import '../widgets/score_board.dart';

class GameContent extends StatelessWidget {
  final String playerMove;
  final String computerMove;
  final String result;
  final int playerScore;
  final int computerScore;
  final Function(String) onMoveSelected;

  const GameContent({
    super.key,
    required this.playerMove,
    required this.computerMove,
    required this.result,
    required this.playerScore,
    required this.computerScore,
    required this.onMoveSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.gif'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 240,
                    height: 80,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/jogadafundo.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Sua jogada',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontFamily: 'RetroGaming',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  GameControls(onMoveSelected: onMoveSelected),
                  const SizedBox(height: 20),
                  GameMoveDisplay(label: 'Jogador inimigo', move: computerMove),
                  const SizedBox(height: 20),
                  GameResult(result: result),
                  const SizedBox(height: 20),
                  ScoreBoard(
                    playerScore: playerScore,
                    computerScore: computerScore,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
