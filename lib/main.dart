import 'package:flutter/material.dart';
import 'package:flutter_unsplash/feed.dart';
import 'package:flutter_unsplash/loadingscreen.dart';
import 'package:flutter_unsplash/savepage.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unsplash',
      theme: new ThemeData(
        primaryColor: Colors.grey,
        primaryColorDark: Colors.black,
        cardTheme: CardTheme(
            shape: RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(Radius.circular(8.0)))),
      ),
      home: LoadingPage(),
      routes: <String, WidgetBuilder>{
      '/feed': (context) => MyHomePage(),
      '/saved' : (context) => SavePage(),
    },
    );
  }
}
