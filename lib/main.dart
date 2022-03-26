import 'package:flutter/material.dart';
import 'package:tuto/firebase_options.dart';
import 'package:tuto/src/app.dart';
//import 'src/app.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}
