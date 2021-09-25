
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'filter.dart';
import 'splash.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barcode Detector',
      theme: ThemeData(
          primarySwatch: Colors.red
      ),
      home: MyHomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashPage();
  }
}


@override
Widget build(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;

  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage('assets/splash.gif'), fit: BoxFit.contain),
    ),
    child: Stack(
      children: <Widget>[
        Positioned(
          top: 0.0,
          left: 0.0,
          child: Container(
            width: width,
            height: height,
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 100.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
                children:[
                  SizedBox(width: 55,),
                  Text('건강한 푸드스타일링- 푸디',
                      style: TextStyle(
                          color: Colors.black,
                          letterSpacing: 2.0,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold
                      )
                  ),
                ]
            ),
            SizedBox(
              height: 30.0,
            ),
            ElevatedButton(child: Text("내 푸디 필터 등록하기"),
              onPressed:
                  () {
                //TODO 필터페이지로 이동하기
                MaterialPageRoute route= MaterialPageRoute(builder: (context)=> FilterPage());
                Navigator.push(context, route);
              },
            ),],
        ),
      ),
    );
  }
}