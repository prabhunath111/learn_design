import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:learn_design/tab_screen.dart';
import 'package:learn_design/Utils/FadeAnimation.dart';
import 'Utils/MySlide.dart';
import 'package:learn_design/Utils/button.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: [
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
  ]);

  Future<void> _handleSignIn() async {
    try {
      await _googleSignIn.signIn();
      var name = _googleSignIn.currentUser.displayName;
    } catch (error) {
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
//      body: Center(
//        child:  Container(
//          alignment: Alignment.bottomCenter,
//          margin: EdgeInsets.only(left: 20.0, right: 20.0),
//          child: RaisedGradientButton(
//            child: Text(
//              'Ghar wapasi',
//              style: TextStyle(color: Colors.white,fontSize: 18.0),
//            ),
//            gradient: LinearGradient(
//              begin: Alignment.topCenter,
//              end: Alignment.bottomCenter,
//              colors: <Color>[
//                Color(0xFF7000d9),
//                Color(0xFFbe8de2)
//              ],
//            ),
//            onPressed: () {
//            Navigator.pop(context);
//            },
//          ),
//        ),
//      ),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              // Below commented code for Carousle slider
//            Container(
//              margin: EdgeInsets.only(top: 300.0),
//              height: 200.0,
//              child: CarouselSlider(
//                height: 400.0,
//                items: [1,2,3,4,5].map((i) {
//                  return Builder(
//                    builder: (BuildContext context) {
//                      return Container(
//                          height: 20.0,
//                          width: MediaQuery.of(context).size.width,
//                          margin: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
//                          decoration: BoxDecoration(
//                              color: Colors.pink
//                          ),
//                          child: Text('text $i', style: TextStyle(fontSize: 16.0),)
//                      );
//                    },
//                  );
//                }).toList(),
//                autoPlay: true,
//
//              ),
//            ),
              SizedBox(
                height: 30.0,
              ),
              SizedBox(
                height: 150.0,
                width: 300.0,
                child: Carousel(
                  dotPosition: DotPosition.bottomCenter,
                  autoplay: true,
                  images: [
//                    NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
//                    NetworkImage('https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
//                    ExactAssetImage("assets/images/LaunchImage.jpg"),
                    ExactAssetImage("assets/images/dhoni.png"),
                    ExactAssetImage("assets/images/tendulkar.png"),
                    ExactAssetImage("assets/images/tendulkar1.png"),
                  ],
                ),
              ),
              SizedBox(
                height: 100.0,
              ),

              Container(
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(left: 20.0, right: 20.0),
                child: RaisedGradientButton(
                  child: Text(
                    'Ghar wapasi',
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[Color(0xFF7000d9), Color(0xFFbe8de2)],
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              FadeAnimation(
                1,
                Container(
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: RaisedGradientButton(
                    child: Text(
                      'Go to Tab Page',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[Color(0xFF7000d9), Color(0xFFbe8de2)],
                    ),
                    onPressed: () {
                      Route route = MySlide(builder: (context) => TabScreen());
                      Navigator.push(context, route);
                    },
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
