import 'package:flutter/material.dart';
import 'package:meu_primeiro_app/pages/other_page.dart';

//Aqui é criado o app
class TelaInicial extends StatefulWidget {
  @override
  _TelaInicialState createState() => _TelaInicialState();
}

//Aqui é criado o estado do widget TelaInicial
//Esse estado é o que vai mudar quando o usuário interagir com a tela
//O estado é criado como uma classe que estende State<TelaInicial>
//Essa classe é onde você vai colocar as variáveis que vão mudar
//e os métodos que vão ser chamados quando o usuário interagir com a tela
//Essa classe é onde você vai colocar o código que vai ser executado quando o widget for criado/atualizado
class _TelaInicialState extends State<TelaInicial> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
     _counter--;
    });
  }

  void _mudar() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TelaJogar()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Você pressionou o botão esse número de vezes:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            TextButton(
                onPressed: () { _mudar();},
                child: Text('Ir para a próxima página'),
            )
          ]
        )),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            width: 10.0,
          ),
          FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),  
    );

  }
}