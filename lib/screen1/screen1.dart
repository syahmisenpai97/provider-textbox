import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_provider/home/model/textprovider.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  final text1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          context.watch<TextProvider>().textDisplay,
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 100, right: 100),
          child: TextField(
            controller: text1,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: BeveledRectangleBorder(),
            foregroundColor: Colors.blue[600],
          ),
          onPressed: () {
            context.read<TextProvider>().changetext(newText: text1.text);
          },
          child: const Text("Save"),
        ),
      ],
    );
  }
}
