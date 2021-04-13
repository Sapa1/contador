import 'package:flutter/material.dart';

class Exercicio2 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Contador(),
    );
  }
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
          botao(),
          botaosub(),
        ],
      ),
    );
  }

  FloatingActionButton botao() {
    return FloatingActionButton(
        onPressed: () {
          setState(
            () {
              soma();
            },
          );
        },
        child: iconesoma());
  }

  FloatingActionButton botaosub() {
    return FloatingActionButton(
        onPressed: () {
          setState(
            () {
              sub();
            },
          );
        },
        child: iconesub());
  }

  iconesoma() {
    return Icon(Icons.add);
  }

  iconesub() {
    return Icon(Icons.remove);
  }

  soma() {
    resultado += 1;
  }

  sub() {
    resultado -= 1;
  }
}
