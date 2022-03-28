import 'package:flutter/material.dart';
import 'package:tuto/src/pages/alert_page.dart';
import 'package:tuto/src/routes/routes.dart';
//import 'package:tuto/src/pages/home_page.dart';

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Seccion 6",
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        //print("Ruta llmada ${settings.name}");

        return MaterialPageRoute(
            builder: (BuildContext context) => const AlertPage());
      },
    );
  }
}
