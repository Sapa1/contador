import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Contador(),
    ),
  );
}

class Contador extends StatefulWidget {
  @override
  _ContadorState createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  var resultado = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu Contador'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Você pressionou o botão:',
              style: TextStyle(fontSize: 25),
            ),
          ),
          Center(
            child: Text(
              '$resultado',
              style: TextStyle(fontSize: 25),
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              print('Botao de soma pressionado');
              setState(() {
                resultado += 1;
              });
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              print('Botao de subtração pressionado');
              setState(() {
                resultado -= 1;
              });
            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
