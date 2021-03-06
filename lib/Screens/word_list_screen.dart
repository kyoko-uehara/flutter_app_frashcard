import 'package:flutter/material.dart';
import 'package:flutter_app_frashcard/Screens/edit_screen.dart';

class WordListScreen extends StatefulWidget {
  const WordListScreen({Key key}) : super(key: key);

  @override
  _WordListScreenState createState() => _WordListScreenState();
}

class _WordListScreenState extends State<WordListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("単語一覧"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addNewWord(),
        child: Icon(Icons.add),
        tooltip: "新しい単語の登録",
      ),
      body: Center(
        child: Text("単語一覧画面"),
      ), //TODO
    );
  }

  _addNewWord() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => EditScreen(),
        ));
  }
}
