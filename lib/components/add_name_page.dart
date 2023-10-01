import 'package:flutter/material.dart';
import 'package:rock_paper_scissors_game/pages/game_page.dart';

class AddNamePage extends StatefulWidget {
  const AddNamePage({super.key});

  @override
  State<AddNamePage> createState() => _AddNamePageState();
}

class _AddNamePageState extends State<AddNamePage> {
  String userName = '';
  TextEditingController controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
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
        body: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Enter your name',
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(color: Colors.black),
                ),
                const SizedBox(
                  height: 20,
                ),
                Form(
                  key: _formKey,
                  child: TextFormField(
                    validator: (deger) {
                      if (deger == null || deger.isEmpty) {
                        return 'Please enter your name.';
                      }
                      return null;
                    },
                    onChanged: (name) {
                      setState(() {
                        userName = name;
                      });
                    },
                    onSaved: (yeniIsim) {
                      setState(() {
                        userName = yeniIsim!;
                      });
                    },
                    controller: controller,
                    decoration: const InputDecoration(
                      hintText: 'Please enter your name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(18),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      userName = controller.text;
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Your name saved :${controller.text}'),
                        ),
                      );
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => GamePage(userName: userName,)));
                    }
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
                        'SAVE',
                        style: TextStyle(fontFamily: 'Libre', fontSize: 30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
