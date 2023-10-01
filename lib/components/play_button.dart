import 'package:flutter/material.dart';
import 'package:rock_paper_scissors_game/components/add_name_page.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const AddNamePage()));
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width / 1.3,
        decoration: const BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(
            Radius.circular(14),
          ),
          boxShadow: [
            BoxShadow(color: Colors.black, offset: Offset(7, 7)),
          ],
        ),
        child: const Center(
          child: Text(
            'PLAY',
            style: TextStyle(fontFamily: 'Libre', fontSize: 30),
          ),
        ),
      ),
    );
  }
}
