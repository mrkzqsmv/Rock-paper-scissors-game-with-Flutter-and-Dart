import 'package:flutter/material.dart';
import 'package:rock_paper_scissors_game/pages/instruction_page.dart';

class SeeInstructionButton extends StatelessWidget {
  const SeeInstructionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const InstructionPage()));
        },
        child: const Text(
          'See the instruction ?',
          style: TextStyle(
              fontFamily: 'Libre',
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ));
  }
}
