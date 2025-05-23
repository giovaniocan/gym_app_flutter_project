import 'package:flutter/material.dart';
import 'package:flutter_project_1/models/exercice_model.dart';
import 'package:flutter_project_1/models/sentimento_model.dart';

class ExerciceScreen extends StatelessWidget {
  ExerciceScreen({super.key});

  final ExerciceModel exercicioModelo = ExerciceModel(
    id: "1",
    nome: "Puxada Alta Pronada",
    treino: "Treino A",
    comoFazer: "Segura com as duas maos na brra, mantem a coluna reta, e PUXA",
  );

  final List<SentimentoModelo> listaSentimentos = [
    SentimentoModelo(
      id: "1",
      sentindo: "Estou me sentindo bem, mas poderia ser melhor",
      data: "2025-05-22",
    ),
    SentimentoModelo(
      id: "2",
      sentindo: "Estou me sentindo ótimo!",
      data: "2025-05-29",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              exercicioModelo.nome,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              exercicioModelo.treino,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 16, 98, 128),
        elevation: 0,
        titleTextStyle: const TextStyle(
          color: Colors.white,
        ),
        toolbarHeight: 72,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(32),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("FOI CLIDADO BB");
        },
        child: const Icon(Icons.add),
      ),
      body: Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text("Enviar foto"),
                  ),
                  ElevatedButton(
                      onPressed: () {}, child: const Text("Tirar foto")),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "Como fazer?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(exercicioModelo.comoFazer),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                color: Colors.black,
              ),
            ),
            const Text(
              "Como estou me sentindo?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(listaSentimentos.length, (index) {
                SentimentoModelo sentimentoAgora = listaSentimentos[index];
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(sentimentoAgora.sentindo),
                  subtitle: Text(sentimentoAgora.data),
                  leading: const Icon(
                    Icons.double_arrow,
                    color: Colors.blue,
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      print("Deletar sentimento ${sentimentoAgora.sentindo}");
                    },
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
