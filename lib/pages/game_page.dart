import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  final String userName;
  const GamePage({super.key, required this.userName});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  int yourScore = 0;
  int compScore = 0;
  String paper = 'Paper';
  String scissors = 'Scissors';
  String rock = 'Rock';
  String yourChoose = 'assets/images/hand.png';
  String compChoose = 'assets/images/hand.png';
  String whoWon = '';
  List<String> compChooses = [
    'assets/images/hand.png',
    'assets/images/rock.png',
    'assets/images/scissors.png'
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'COMPUTER',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(
              width: 150,
              height: 150,
              child: Image.asset(compChoose),
            ),
            Text('Computer\'s score: $compScore'),
            Container(
              width: MediaQuery.of(context).size.width / 1.1,
              height: 50,
              decoration: const BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Center(
                child: Text(
                  whoWon,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            Text(
              widget.userName,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(
              width: 150,
              height: 150,
              child: Image.asset(yourChoose),
            ),
            Text('${widget.userName}\'s score: $yourScore'),
            //creating buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                paperbuttonOlustur('assets/images/hand.png', 'Paper'),
                rockbuttonOlustur('assets/images/rock.png', 'Rock'),
                scissorsbuttonOlustur('assets/images/scissors.png', 'Scissors'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  //create paper button
  Widget paperbuttonOlustur(String imgPath, String signName) {
    return InkWell(
      onTap: () {
        setState(() {
          //create paper button logic
          yourChoose = 'assets/images/hand.png';
          compChoose = (compChooses..shuffle()).first;
          if (compChoose == 'assets/images/rock.png') {
            whoWon = 'You Won!';
            yourScore++;
          } else if (compChoose == 'assets/images/scissors.png') {
            whoWon = 'Computer Won!';
            compScore++;
          } else if (compChoose == 'assets/images/hand.png') {
            whoWon = 'None of you won!';
          }
        });
      },
      child: Container(
        width: 100,
        height: 100,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Image.asset(imgPath),
      ),
    );
  }

  //create rock button
  Widget rockbuttonOlustur(String imgPath, String signName) {
    return InkWell(
      onTap: () {
        setState(() {
          //create rock button logic
          yourChoose = 'assets/images/rock.png';
          compChoose = (compChooses..shuffle()).first;
          if (compChoose == 'assets/images/scissors.png') {
            whoWon = 'You Won!';
            yourScore++;
          } else if (compChoose == 'assets/images/paper.png') {
            whoWon = 'Computer Won!';
            compScore++;
          } else if (compChoose == 'assets/images/rock.png') {
            whoWon = 'None of you won!';
          }
        });
      },
      child: Container(
        width: 100,
        height: 100,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Image.asset(imgPath),
      ),
    );
  }

  //create scissors button
  Widget scissorsbuttonOlustur(String imgPath, String signName) {
    return InkWell(
      onTap: () {
        setState(() {
          //create scissor button logic
          yourChoose = 'assets/images/scissors.png';
          compChoose = (compChooses..shuffle()).first;
          if (compChoose == 'assets/images/paper.png') {
            whoWon = 'You Won!';
            yourScore++;
          } else if (compChoose == 'assets/images/rock.png') {
            whoWon = 'Computer Won!';
            compScore++;
          } else if (compChoose == 'assets/images/scissors.png') {
            whoWon = 'None of you won!';
          }
        });
      },
      child: Container(
        width: 100,
        height: 100,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Image.asset(imgPath),
      ),
    );
  }
}
