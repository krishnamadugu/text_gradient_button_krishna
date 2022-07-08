import 'package:flutter/material.dart';
import 'package:text_gradient_button_krishna/tg_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("App Bar"),
        ),
        body: GradientButton(
          buttonFunctionality: () {
            print("button pressed");
          },
          title: 'Hello World',
          color1: Colors.red,
          color2: Colors.yellow,
        ),
      ),
    );
  }
}
