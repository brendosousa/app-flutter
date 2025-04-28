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
        title: Text('Pokedex'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 250,
              height: 60,
              child: TextFormField(
                decoration: const InputDecoration(hintText: 'Digite o nome do Pokemon'),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                return null;
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Pesquisar'),
            ),
            Image.asset('assets/images/Pokedex.png'),
          ],
        ),
      ),
    );
  }
}