import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  HomePageTemp({Key? key}) : super(key: key);

  final opciones = ["uno", "dos", "tres", "cuatro", "cinco","6asdas","asd","uno", "dos", "tres", "cuatro", "cinco","6asdas","asd","uno", "dos", "tres", "cuatro", "cinco","6asdas","asd","uno", "dos", "tres", "cuatro", "cinco","6asdas","asd"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Componentes Temps"),
      ),
      body: ListView(children: _crearItemsCorta()),
    );
  }



List<Widget> _crearItemsCorta() {


  return opciones.map((e) {

    return Column(
      children: [
        ListTile(
          title: Text(e), 
          subtitle: const Text("Cualquier Vaina"),
          leading: const Icon(Icons.account_balance_wallet),
          trailing: const Icon(Icons.arrow_forward),
          onTap: () {},
        ),
        Divider(color: Colors.blueAccent[900],),
      ],
    );




  }).toList();
}
}
