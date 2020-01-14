import 'package:flutter/material.dart';
import 'package:learn_design/Pages/firstpage.dart';
import 'package:learn_design/Pages/secondpage.dart';
import 'package:learn_design/Pages/thirdpage.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: new Text('Tab Page'),
          backgroundColor: Colors.teal,
          bottom: new TabBar(
            controller: controller,
            indicatorColor: Colors.black,
            tabs: <Widget>[
              new Tab(
                icon: new Icon(Icons.alarm),
                child: Text('alarm'),
              ),
              new Tab(
                icon: Icon(Icons.account_balance),
                child: Text('a/c balance'),
              ),
              new Tab(
                icon: Icon(Icons.chat),
                child: Text('chat'),
              )
            ],
          ),
        ),
        body: new TabBarView(controller: controller, children: <Widget>[
          new FirstPage(),
          new SecondPage(),
          new ThirdPage(),
        ]),
      ),
    );
  }
}
