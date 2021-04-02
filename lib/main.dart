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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu Contador'),
      ),
      body: Container(
        color: Colors.white,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Botao pressionado');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
