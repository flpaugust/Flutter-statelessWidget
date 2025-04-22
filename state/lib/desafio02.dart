 
import 'package:flutter/material.dart';
 
void main() => runApp(VotacaoApp());
 
class VotacaoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: VotacaoPage());
  }
}
 
class VotacaoPage extends StatefulWidget {
 

  @override
  State<VotacaoPage> createState() => _VotacaoPageState();
}

class _VotacaoPageState extends State<VotacaoPage> {
    int contadorGato = 0;
    int contadorCachorro = 0;
    int contador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Simulador de Votação")),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '🐱 Gatos: $contadorGato   🐶 Cachorros: $contadorCachorro',
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(height: 16),
            Text(
              "Resultado",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("Votar em Gatos")),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      contadorGato++;
                    });
                  },
                  child: Text("Votar em Cachorros"),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  contadorCachorro;
                });
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
              child: Text("Resetar"),
              
            ),
          ],
        ),
      ),
    );
  }
}
 