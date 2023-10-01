import 'package:flutter/material.dart';

class InstructionPage extends StatelessWidget {
  const InstructionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back_ios_new_sharp)),
        ),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Game Name: Rock Paper Scissors',
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    'Objective of the Game: Rock Paper Scissors is an enjoyable strategy game played between two players. The goal of the players is to predict their opponent\'s moves and defeat them'),
                SizedBox(
                  height: 20,
                ),
                Text(
                    'Game Rules: Number of Players: This game is typically played between two players, but it can also be played with more players. Let\'s start with two players'),
                SizedBox(
                  height: 20,
                ),
                Text(
                    'Move Options: Each player takes turns choosing a move. Players have three basic move options:'),
                SizedBox(
                  height: 20,
                ),
                Text('Rock: Represented by making a fist.'),
                Text('Paper: Represented by an open palm.'),
                Text('Scissors: Represented by two fingers.'),
                SizedBox(
                  height: 20,
                ),
                Text(
                    'Winning Moves: To determine the outcome of the game, moves are evaluated according to the following rules'),
                SizedBox(
                  height: 20,
                ),
                Text('Rock crushes scissors (Rock wins).'),
                Text('Scissors cut paper (Scissors wins).'),
                Text('Paper covers rock (Paper wins).'),
                SizedBox(
                  height: 20,
                ),
                Text(
                    'Tie Situation: If both players make the same move, the game ends in a tie, and a new round begins.'),
                SizedBox(
                  height: 20,
                ),
                Text(
                    'End of Round and Score: At the end of each round, players determine the winner. The winning player earns one point. Players typically prefer to play until they reach a certain point limit.'),
                SizedBox(
                  height: 20,
                ),
                Text(
                    'Game Winner: The winner of the game is the player who reaches the predetermined point limit first. If you wish to play more rounds, you can add new rounds.'),
                SizedBox(
                  height: 20,
                ),
                Text('Example Gameplay:'),
                Text('Player 1 chooses rock.'),
                Text('Player 2 chooses paper.'),
                SizedBox(
                  height: 20,
                ),
                Text(
                    'Paper covers rock, so Player 2 wins the round and earns one point.'),
                Text('Determining the Winner:'),
                SizedBox(
                  height: 20,
                ),
                Text(
                    'The player who reaches the set point limit first is declared the winner of the game. For example, the first player to reach 5 points is declared the winner.'),
                SizedBox(
                  height: 20,
                ),
                Text('Final Notes:'),
                SizedBox(
                  height: 20,
                ),
                Text(
                    'Enjoy the game and try to make strategic moves.If you want to add more players, remember that each player should take turns making their moves."Rock Paper Scissors" is purely for entertainment purposes and is based on chance.'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
