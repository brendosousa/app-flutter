import 'package:flutter/material.dart';

void main() {
  runApp(MinhaSegundaPagina());
}

class MinhaSegundaPagina extends StatelessWidget {
  const MinhaSegundaPagina({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First Flutter App'),
        ),
        body: Center(
          child: Text(
            'Hello, Flutter!',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}