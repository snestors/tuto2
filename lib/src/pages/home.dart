import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tuto/src/pages/user_firebase.dart';
//import 'package:tuto/src/pages/alert_page.dart';
import 'package:tuto/src/providers/menu_providers.dart';
import 'package:tuto/src/utils/icon_strings_util.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!.uid;

    return Scaffold(
        appBar: AppBar(
          title: Text("${user}"),
        ),
        body: LeeUserColections(),
        drawer: Drawer(
          child: _lista(),
        ));
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: const [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        // print(snapshot.data);

        return ListView(
          children: _listItems(snapshot.data, context),
        );
      },
    );

    //print(menuProvider.opciones);
    /*
  menuProvider.cargarData().then((r) {
    print("lista");
    print(r);
  });*/

    //return
  }

  List<Widget> _listItems(List<dynamic>? a, BuildContext context) {
    final List<Widget> opciones = [];

    if (a != null) {
      for (var opt in a) {
        final widgetTemp = ListTile(
          title: Text(opt['ruta'].toString()),
          leading: getIcon(opt["icon"]),
          trailing: const Icon(
            Icons.keyboard_arrow_right,
            color: Colors.blue,
          ),
          onTap: () {
            Navigator.pushNamed(context, opt['ruta']);
            /*
            final route = MaterialPageRoute(builder: (context){
              return const AlertPage();
            });
            Navigator.push(context, route);
  */
          },
        );

        opciones
          ..add(widgetTemp)
          ..add(const Divider());
      }
    }

    return opciones;
  }

  _sing_out() {
    return TextButton(
        onPressed: () {
          FirebaseAuth.instance.signOut();
        },
        child: Text("data"));
  }
}
