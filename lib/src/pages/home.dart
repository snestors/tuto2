import 'package:flutter/material.dart';
import 'package:tuto/src/providers/menu_providers.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes"),
      ),
      body: _lista(),
    );
  }

 Widget _lista() {

   print(menuProvider.opciones);

   return ListView(children: _ListItems(),);

 }

List<Widget> _ListItems() {
  return [
    ListTile(title: Text("Hola mundo"),),
    Divider(),
    ListTile(title: Text("Hola mundo"),),
    Divider(),
    ListTile(title: Text("Hola mundo"),),
    Divider(),
    ListTile(title: Text("Hola mundo"),),
    Divider(),
  ];
}
}