import 'package:flutter/material.dart';
import 'add_cultivation_screen.dart';
import 'details_screen.dart';
import '../widgets/cultivation_card.dart';

class HomeScreen extends StatelessWidget {
  final List<String> cultivations = ["Milho", "Soja", "Feijão", "Arroz"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cultivos dos Pequenos Agricultores'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddCultivationScreen()),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: cultivations.length,
        itemBuilder: (context, index) {
          return CultivationCard(
            cultivation: cultivations[index],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(cultivation: cultivations[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
