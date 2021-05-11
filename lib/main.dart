import 'package:flutter/material.dart';

import 'Screens/home_screen.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  const Myapp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "わたしだけの単語帳",
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: "Lanobe",
      ),
      home: HomeScreen(),
    );
  }
}
