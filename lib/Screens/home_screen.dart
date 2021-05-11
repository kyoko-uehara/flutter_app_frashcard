import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children:[
            Expanded(child: Image.asset("assets/images/image_title.png")),
            _titleText(),
            //TODO 横線,
            //TODO 確認ボタン
            //TODO


          ],
        ),

      ),
    );
  }

  Widget _titleText(){
    return Column(
      children: [
        Text("わたしだけの単語帳",style: TextStyle(fontSize: 40.0),),
        Text("My Own Frashcard",style: TextStyle(fontSize: 24.0),),

      ],
    );
  }
}
