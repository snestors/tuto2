import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SignInScreen(
      headerBuilder: _logo(),
      providerConfigs: const [EmailProviderConfiguration()],
      actions: [
        AuthStateChangeAction((context, state) {
          Navigator.pushReplacementNamed(context, "/");
        })
      ],
    );
  }

  _logo() {
    return (context, constraints, _) {
      return Padding(
        padding: const EdgeInsets.all(20),
        child: AspectRatio(
          aspectRatio: 1,
          child: Image.network(
              'https://firebase.flutter.dev/img/flutterfire_300x.png'),
        ),
      );
    };
  }
}
