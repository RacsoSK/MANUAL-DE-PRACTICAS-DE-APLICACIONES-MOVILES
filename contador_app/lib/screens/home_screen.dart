import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  //Propiedades

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);

    int counter = 0;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 115, 142, 230),
        title: const Text('HomeScreen'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Contador de Taps', style: fontSize30),
            Text(counter.toString(), style: fontSize30),
          ],
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.plus_one,
        ),
        onPressed: () {
          //va una accion
          counter++;
          print(counter.toString());
        },
      ),
    );
  }
}
