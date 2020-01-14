import 'package:splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:list_view_item_builder/list_view_item_builder.dart';
import 'package:learn_design/Utils/FadeAnimation.dart';
import 'Utils/MySlide.dart';
import 'package:learn_design/Utils/button.dart';
import 'first_screen.dart';
import 'second_screen.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /*Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/background.png'),
                          fit: BoxFit.fill)),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 30,
                        width: 80,
                        height: 200,
                        child: FadeAnimation(
                            2,
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/light-1.png'))),
                            )),
                      ),
                      Positioned(
                        left: 140,
                        width: 80,
                        height: 150,
                        child: FadeAnimation(
                            2.3,
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/light-2.png'))),
                            )),
                      ),
                      Positioned(
                        right: 40,
                        top: 40,
                        width: 80,
                        height: 150,
                        child: FadeAnimation(
                            2.5,
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/clock.png'))),
                            )),
                      ),
                      Positioned(
                        child: FadeAnimation(
                            2.6,
                            Container(
                              margin: EdgeInsets.only(top: 50),
                              child: Center(
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      FadeAnimation(
                          2.8,
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(143, 148, 251, .2),
                                      blurRadius: 20.0,
                                      offset: Offset(0, 10))
                                ]),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey[100]))),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Email or Phone number",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[400])),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Password",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[400])),
                                  ),
                                )
                              ],
                            ),
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      FadeAnimation(
                        3,
                        Container(
                          alignment: Alignment.bottomCenter,
                          margin: EdgeInsets.only(left: 20.0, right: 20.0),
                          child: RaisedGradientButton(
                            child: Text(
                              'Login',
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
                                  MySlide(builder: (context) => SecondScreen());
                              Navigator.push(context, route);
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      FadeAnimation(
                          2.5,
                          Text(
                            "Forgot Password?",
                            style: TextStyle(
                                color: Color.fromRGBO(143, 148, 251, 1)),
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );*/
/*
    return new SplashScreen(

      seconds: 5,
      navigateAfterSeconds: new FirstScreen(),
//        title: new Text('Welcome In SplashScreen',
//          style: new TextStyle(
//              fontWeight: FontWeight.bold,
//              fontSize: 20.0
//          ),),
//        image: new Image.network('https://i.imgur.com/TyCSG9A.png'),
//      image: new Image.asset('assets/images/front_splash.png',height: MediaQuery.of(context).size.height,width: MediaQuery.of(context).size.width,),
      imageBackground: AssetImage('assets/images/background_splash.png'),
      image: new Image.asset('assets/images/front_splash.png',alignment: Alignment.center,),
      backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        onClick: ()=>print("Flutter Egypt"),
        loaderColor: Colors.red,
    );*/
    return new FirstScreen();
  }
}
