import 'package:flutter/material.dart';
import 'package:learn_design/Utils/MySlide.dart';
import 'package:learn_design/Utils/button.dart';

import '../chat.dart';
import '../chat_screen.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        Center(
          child: new Text('3rd Page',
            style: new TextStyle(fontSize: 25.0,color: Colors.purple),),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.only(left: 20.0, right: 20.0),
          child: RaisedGradientButton(
            child: Text(
              'Go to chat screen',
              style: TextStyle(color: Colors.white,fontSize: 18.0),
            ),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Color(0xFF7000d9),
                Color(0xFFbe8de2)
              ],
            ),
            onPressed: () {
              Route route =
              MySlide(builder: (context) => ChatPage());
              Navigator.push(context, route);
            },
          ),
        ),
      ],

      ),
    );
  }
}
