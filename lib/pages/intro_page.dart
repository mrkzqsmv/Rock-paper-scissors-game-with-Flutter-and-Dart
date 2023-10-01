import 'package:flutter/material.dart';
import 'package:rock_paper_scissors_game/components/play_button.dart';
import 'package:rock_paper_scissors_game/components/see_instruction_button.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Rock Scissors Paper Game',
            style: TextStyle(fontFamily: 'Libre'),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Image.asset('assets/images/image.jpg'),
            const Spacer(),
            const PlayButton(),
            const SizedBox(
              height: 18,
            ),
            const SeeInstructionButton(),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
