import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';


class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Alert Page"),),
      floatingActionButton: FloatingActionButton(child: const Icon(Icons.arrow_back), onPressed: (){
        Navigator.pop(context);
      },),
    );

  }
}