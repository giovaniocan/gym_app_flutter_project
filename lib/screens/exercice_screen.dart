import 'package:flutter/material.dart';

class ExerciceScreen extends StatelessWidget {
  const ExerciceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Puxada Alta Pronada - Treino A'),
        backgroundColor: Colors.blue,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("FOI CLIDADO BB");
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text("Enviar foto"),
            ),
            const Text(
              "Como fazer?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const Text(
                "Segura com as duas maos na brra, mantem a coluna reta, e PUXA"),
            const Divider(
              color: Colors.black,
              thickness: 1,
            ),
            const Text(
              "Como estou me sentindo?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const Text("Estou me sentindo bem, mas poderia ser melhor"),
          ],
        ),
      ),
    );
  }
}
