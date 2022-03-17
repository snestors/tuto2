import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final textSytle = const TextStyle(fontSize: 28);

  final int conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Titulo"),
        centerTitle: true,
        elevation: 5.5,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Numero de Taps:",
              style: textSytle,
            ),
            Conteo(),
          ],
        ),
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        elevation: 5.5,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

class Conteo extends StatefulWidget {
  Conteo({Key? key}) : super(key: key);

  @override
  State<Conteo> createState() => _ConteoState();
}

class _ConteoState extends State<Conteo> {
  int conteo = 0;

  void _increment() {
    conteo++;
  }

  @override
  Widget build(BuildContext context) {
    return Text('$conteo');
  }
}
