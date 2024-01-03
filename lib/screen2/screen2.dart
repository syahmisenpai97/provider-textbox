import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_provider/home/model/textprovider.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        context.watch<TextProvider>().textDisplay,
        style: TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
