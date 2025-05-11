import 'package:flutter/material.dart';

class TelaJogar extends StatefulWidget {
  const TelaJogar({super.key});

  @override
  _TelaJogarState createState() => _TelaJogarState();
}

TextEditingController myController = TextEditingController();
String _valorDigitado = '';

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
                controller: myController,
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
                setState(() {
                  _valorDigitado = myController.text;
                });
              },
              child: Text('Pesquisar'),
            ),
            const SizedBox(height: 20),
            Text('Valor digitado: $_valorDigitado'),
            //Image.asset('assets/images/Pokedex.png'),
            Container(
              height: 850,
              width: 600,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Pokedex.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}