import 'package:flutter/material.dart';

class CultivationCard extends StatelessWidget {
  final String cultivation;
  final VoidCallback onTap;

  CultivationCard({required this.cultivation, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: ListTile(
        contentPadding: EdgeInsets.all(10),
        title: Text(cultivation, style: TextStyle(fontSize: 18)),
        trailing: Icon(Icons.arrow_forward),
        onTap: onTap,
      ),
    );
  }
}
