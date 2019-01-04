import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'blocs/provider.dart';
import 'bacgroundLayers/CustomPainter.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        theme: ThemeData.light(),
        title: 'Log Me In',
        home: Scaffold(
          body: Container(
            child: Stack(
              children: <Widget>[
                CustomPainterBackgroud(),
                LoginScreen()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
