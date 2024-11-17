import 'package:flutter/material.dart';

class AddCultivationScreen extends StatefulWidget {
  @override
  _AddCultivationScreenState createState() => _AddCultivationScreenState();
}

class _AddCultivationScreenState extends State<AddCultivationScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar Cultivo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Nome do Cultivo',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Aqui você pode salvar o cultivo no banco de dados ou na memória
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Cultivo adicionado!')),
                );
                Navigator.pop(context);
              },
              child: Text('Adicionar'),
            ),
          ],
        ),
      ),
    );
  }
}
