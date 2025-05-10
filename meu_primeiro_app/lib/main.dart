import 'package:flutter/material.dart';
import 'package:meu_primeiro_app/pages/second_page.dart';

//Aqui roda o app
void main() {
  runApp(Home());
}

//Aqui é construída a classe "widget" que vai rodar a tela inicial
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Minha página faz qualquer coisa',
      home: TelaInicial(),
    );
  }
}
