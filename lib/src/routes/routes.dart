import 'package:flutter/material.dart';

import 'package:tuto/src/pages/alert_page.dart';
import 'package:tuto/src/pages/avatar_page.dart';
import 'package:tuto/src/pages/card_page.dart';
import 'package:tuto/src/pages/home.dart';
import 'package:tuto/src/pages/user_firebase.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => AddUser("Nestor", "company", 20),
    'alert': (BuildContext context) => const AlertPage(),
    'avatar': (BuildContext context) => const AvatarPage(),
    'card': (BuildContext context) => const CardPage(),
  };
}
