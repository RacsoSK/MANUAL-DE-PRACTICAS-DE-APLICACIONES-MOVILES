import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final List opciones = const [
    'KFC',
    'Pizza Hot',
    'Domino´s Pizza',
    'Mc´Donalds',
    'Little Caesar',
  ];
  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('List View Tipo 1'),
      ),
      body: ListView(
        children: [
          ...opciones
              .map(
                (games) => ListTile(
                  title: Text(games),
                  trailing: const Icon(Icons.arrow_right_sharp),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
