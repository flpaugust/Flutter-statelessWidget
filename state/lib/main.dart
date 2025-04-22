 
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Contador());
  }
}
 
class Contador extends StatelessWidget {
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Exemplo de Stateful Widget')),
      body: Center(child: Text('Valor: 0', style: TextStyle(fontSize: 30))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState((){

          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
 