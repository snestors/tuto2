import 'package:flutter/material.dart';

import 'package:tuto/src/pages/alert_page.dart';
import 'package:tuto/src/pages/auth/login_auth.dart';

import 'package:tuto/src/pages/avatar_page.dart';
import 'package:tuto/src/pages/card_page.dart';
import 'package:tuto/src/pages/home.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) =>const HomePage(),
    'alert': (BuildContext context) => const AlertPage(),
    'avatar': (BuildContext context) => const AvatarPage(),
    'card': (BuildContext context) => const CardPage(),       
    'login': (BuildContext context) => const AuthGate()
  };
}
