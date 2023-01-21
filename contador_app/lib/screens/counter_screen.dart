import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  //Propiedades
  int counter = 0;
  String sorpresa = '...';

  void increase() {
    counter++;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  void reset() {
    counter = 0;
    sorpresa = '...';
    setState(() {});
  }

  void sorprise() {
    if (counter == 27) {
      sorpresa = 'TQM NATT ❤️';
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);
    const fontSize70 =
        TextStyle(fontSize: 70, color: Color.fromARGB(255, 49, 109, 221));
    const fontSizeSor =
        TextStyle(fontSize: 60, color: Color.fromARGB(255, 240, 176, 81));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 115, 142, 230),
        title: const Text('Sopresas 🖤'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Encuentra el numero correcto\nPista: Tu Cumple 🎂😅',
                style: fontSize30),
            Text(
              '>  $counter  <',
              style: fontSize70,
            ),
            Text(sorpresa.toString(), style: fontSizeSor),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActions(
        increaseFn: increase,
        decreaseFn: decrease,
        resetFn: reset,
        sorpriseFn: sorprise,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;
  final Function sorpriseFn;

  const CustomFloatingActions({
    Key? key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.resetFn,
    required this.sorpriseFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        //incremento
        FloatingActionButton(
          onPressed: () => decreaseFn(), //() => setState(() => counter--)
          child: const Icon(
            Icons.exposure_minus_1_outlined,
          ),
        ),

        //decremento
        FloatingActionButton(
          onPressed: () => resetFn(), //() => setState(() => counter = 0),
          child: const Icon(
            Icons.refresh,
          ),
        ),

        //poner en Cero
        FloatingActionButton(
          onPressed: () => increaseFn(), //() => setState(() => counter--),
          child: const Icon(
            Icons.plus_one,
          ),
        ),

        //Sorpresa
        FloatingActionButton(
          onPressed: () => sorpriseFn(), //() => setState(() => counter--),
          child: const Icon(
            Icons.card_giftcard_rounded,
          ),
        ),
      ],
    );
  }
}
