import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final List opciones = const [
    'KFC',
    'Pizza Hot',
    'Domino´s Pizza',
    'Mc´Donalds',
    'Little Caesar',
  ];
  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('List View Tipo 2'),
      ),
      body: ListView.separated(
          itemBuilder: (context, i) => ListTile(
                title: Text(opciones[i]),
                trailing: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary,
                ),
                onTap: () {
                  //final game = opciones[i];
                  //print(game);
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: opciones.length),
    );
  }
}
