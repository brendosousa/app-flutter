import 'package:flutter/material.dart';

void main() {
  runApp(MinhaSegundaPagina());
}

class MinhaSegundaPagina extends StatelessWidget {
  const MinhaSegundaPagina({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /*home: const MyHomePage(title: 'Minha página faz qualquer coisa'),*/

      home: Scaffold(
        appBar: AppBar(
          title: Text('My First Flutter App'),
        ),
        body: Center(
          child: ElevatedButton(
              child: Text("Voltar pra página inicial"),
              onPressed: () {
                Navigator.pop(context);
              } 
            )
        ),
      ),
    );
  }
}

/*class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text("Voltar pra página inicial"),
              onPressed: () {
                Navigator.pop(context);
              } 
            )

          ]
        )
      ),
    );  
  }


}*/