import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert Page"),
      ),
      body: _alertBody(context),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  Widget _alertBody(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () => _dispathAler(context),
        child: const Text("Mostrar Alerta"),
        style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0))),
            elevation: MaterialStateProperty.all(5),
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white)),
      ),
    );
  }

  void _dispathAler(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            elevation: 10,
            
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
            title: const Text("Titulo"),
            content: Column(mainAxisSize: MainAxisSize.min, children: const[
              Text("Contenido de la alerta cuando esta abierta"),
              FlutterLogo(size: 100,)
            ]),
            
            actions: [
              TextButton(onPressed: () {
                Navigator.of(context).pop();
              }, child: const Text("Cancelar")),
              TextButton(onPressed: () {}, child: const Text("OK")),
            ],
          );
        });
  }
}
