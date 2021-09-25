import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Padding(
        padding: EdgeInsets.all(100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
                children:[
                  Text('건강한 푸드스타일링- 푸디 splash',
                      style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 2.0,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold
                      )
                  ),
                ]
            ),
          ],
        ),
      ),
    );
  }
}