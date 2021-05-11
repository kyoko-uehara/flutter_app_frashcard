import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  final bool isIncludedMemorisedWords;

  TestScreen({this.isIncludedMemorisedWords});

  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    var isInclude = widget.isIncludedMemorisedWords;
    return MaterialApp(
      title: "わたしだけの単語帳",
      home: Scaffold(
        body: Center(
          child: Text("テスト画面：$isInclude"),
        ),
      ),
    );
  }
}
