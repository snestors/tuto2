import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  const ContadorPage({Key? key}) : super(key: key);

  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _textSytle = const TextStyle(fontSize: 28);

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Mi primera app"),
          centerTitle: true,
          elevation: 5.5,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Numero de Taps:",
                style: _textSytle,
              ),
              Text(
                '$_conteo',
                style: _textSytle,
              ),
            ],
          ),
        ),
        floatingActionButton:
            _crearBotones() /*FloatingActionButton(
        onPressed: () {
          _conteo++;
          setState(() {});
        },
        elevation: 5.5,
        child: const Icon(Icons.add),
      ),*/

        );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        const SizedBox(width: 30.0),
        //Botan Add
        FloatingActionButton(
          onPressed: () => _add(),
          child: const Icon(Icons.add),
        ),
        const Expanded(child: SizedBox()),
        //Boton Reset
        FloatingActionButton(
          onPressed: () => _restart(),
          child: const Icon(Icons.exposure_zero),
        ),
        const SizedBox(
          width: 5.0,
        ),
        //Boton Menos
        FloatingActionButton(
          onPressed: () => _expose(),
          child: const Icon(Icons.remove_sharp),
        ),
      ],
    );
  }

  void _add() {
    setState(() {
      _conteo++;
    });
  }

  void _restart() {
    _conteo = 0;
    setState(() {});
  }

  void _expose() {
    _conteo--;
    setState(() {});
  }
}
