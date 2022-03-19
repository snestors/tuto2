import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final opciones = ["uno", "dos", "tres", "cuatro", "cinco","6asdas","asd","uno", "dos", "tres", "cuatro", "cinco","6asdas","asd","uno", "dos", "tres", "cuatro", "cinco","6asdas","asd","uno", "dos", "tres", "cuatro", "cinco","6asdas","asd"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Componentes Temps"),
      ),
      body: ListView(children: _crearItems()),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = <Widget>[];

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );

      lista
        ..add(tempWidget)
        ..add(const Divider(
          color: Colors.red,
        ));
    }

    return lista;
  }
}
