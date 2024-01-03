import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_provider/home/model/textprovider.dart';
import 'package:training_provider/home/view/home.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (context) => TextProvider())],
    child: MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    ),
  ));
}
