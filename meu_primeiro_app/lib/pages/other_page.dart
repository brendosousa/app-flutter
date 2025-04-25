import 'package:flutter/material.dart';

class TelaJogar extends StatefulWidget {
  @override
  _TelaJogarState createState() => _TelaJogarState();
}

class _TelaJogarState extends State<TelaJogar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela de Jogo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Essa é a tela de jogo!'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Voltar'),
            ),
          ],
        ),
      ),
    );
  }
}