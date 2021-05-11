import 'package:flutter/material.dart';
import 'package:flutter_app_frashcard/Screens/test_screen.dart';
import 'package:flutter_app_frashcard/Screens/word_list_screen.dart';
import 'package:flutter_app_frashcard/parts/button_with_icon.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isIncludedMemorisedWords = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(child: Image.asset("assets/images/image_title.png")),
            _titleText(),
            Divider(
              height: 30.0,
              indent: 10.0,
              endIndent: 10.0,
              color: Colors.white,
            ),
            //確認ボタン
            ButtonWithIcon(
              onPressed: () => _startTestScreen(context),
              icon: Icon(Icons.play_arrow),
              label: "かくにんテストをする",
              color: Colors.red,
            ),
            SizedBox(
              height: 10.0,
            ),
            //ラジオボタン
            _radioButtons(),
            SizedBox(
              height: 30.0,
            ),
            //単語一覧をみるボタン
            ButtonWithIcon(
              onPressed: () => _startWordListScreen(context),
              icon: Icon(Icons.list),
              label: "単語一覧を見る",
              color: Colors.grey,
            ),
            SizedBox(
              height: 60.0,
            ),
            Text(
              "powered by neko LLC 2021",
              style: TextStyle(fontFamily: "Mont"),
            ),
            SizedBox(
              height: 16.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget _titleText() {
    return Column(
      children: [
        Text(
          "わたしだけの単語帳",
          style: TextStyle(fontSize: 32.0),
        ),
        Text(
          "My Own Frashcard",
          style: TextStyle(fontSize: 24.0, fontFamily: "Mont"),
        ),
      ],
    );
  }

  Widget _radioButtons() {
    return Padding(
      padding: const EdgeInsets.only(left: 50.0),
      child: Column(
        children: [
          RadioListTile(
            value: false,
            groupValue: isIncludedMemorisedWords,
            onChanged: (value) => _onRadioSelected(value),
            title: Text(
              "暗記済みの単語を除外する",
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          RadioListTile(
            value: true,
            groupValue: isIncludedMemorisedWords,
            onChanged: (value) => _onRadioSelected(value),
            title: Text(
              "暗記済みの単語を含む",
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ],
      ),
    );
  }

  _onRadioSelected(value) {
    setState(() {
      isIncludedMemorisedWords = value;
      print("$valueが選ばれたよ");
    });
  }

  _startWordListScreen(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => WordListScreen()));
  }

  _startTestScreen(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => TestScreen(
                isIncludedMemorisedWords: isIncludedMemorisedWords)));
  }
}
