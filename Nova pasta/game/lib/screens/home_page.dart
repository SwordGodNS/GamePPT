import 'dart:math';
import 'package:flutter/material.dart';
import 'game_content.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int playerScore = 0;
  int computerScore = 0;
  String playerMove = '';
  String computerMove = '';
  String result = '';

  final List<String> moves = ['Pedra', 'Papel', 'Tesoura'];

  void playGame(String playerSelection) {
    String computerSelection = moves[Random().nextInt(moves.length)];
    String gameResult = determineWinner(playerSelection, computerSelection);

    setState(() {
      playerMove = playerSelection;
      computerMove = computerSelection;
      result = gameResult;

      if (gameResult == 'Você Ganhou') {
        playerScore++;
      } else if (gameResult == 'Você Perdeu') {
        computerScore++;
      }
    });
  }

  String determineWinner(String player, String computer) {
    if (player == computer) {
      return 'Empate';
    } else if ((player == 'Pedra' && computer == 'Tesoura') ||
        (player == 'Papel' && computer == 'Pedra') ||
        (player == 'Tesoura' && computer == 'Papel')) {
      return 'Você Ganhou';
    } else {
      return 'Você Perdeu';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(223, 10, 28, 68),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.games, color: Colors.white, size: 30),
            const SizedBox(width: 10),
            Flexible(
              child: Text(
                'Pedra, Papel e Tesoura',
                style: const TextStyle(
                  fontSize: 20, // Ajuste o tamanho se necessário
                  fontWeight: FontWeight.bold,
                  fontFamily: 'RetroGaming',
                  letterSpacing: 1.2,
                ),
                overflow: TextOverflow.ellipsis, // Adiciona reticências se o texto for longo
              ),
            ),
          ],
        ),
      ),
      body: GameContent(
        playerMove: playerMove,
        computerMove: computerMove,
        result: result,
        playerScore: playerScore,
        computerScore: computerScore,
        onMoveSelected: playGame,
      ),
    );
  }
}
