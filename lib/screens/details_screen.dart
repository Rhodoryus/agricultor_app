import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String cultivation;

  DetailsScreen({required this.cultivation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes do Cultivo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Cultivo: $cultivation',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text('Clima: Ensolarado'),
            Text('Temperatura: 28°C'),
            Text('Previsão de Chuva: 10%'),
            // Adicione mais informações conforme necessário
          ],
        ),
      ),
    );
  }
}
