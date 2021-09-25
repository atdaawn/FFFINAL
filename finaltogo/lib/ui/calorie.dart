import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test123/main.dart';

class CaloriePage extends StatefulWidget {
  const CaloriePage({Key? key}) : super(key: key);

  @override
  _CaloriePageState createState() => _CaloriePageState();
}

class _CaloriePageState extends State<CaloriePage> {


  bool onesix = false;

  Widget onesixCheckbox() =>
      Checkbox(
        value: onesix,
        onChanged: (value) {
          setState(() {
            this.onesix = value!;
          });
        },
      );
  bool oneeight = false;

  Widget oneeightCheckbox() =>
      Checkbox(
        value: oneeight,
        onChanged: (value) {
          setState(() {
            this.oneeight = value!;
          });
        },
      );
  bool twozero = false;

  Widget twozeroCheckbox() =>
      Checkbox(
        value: twozero,
        onChanged: (value) {
          setState(() {
            this.twozero = value!;
          });
        },
      );
  bool twotwo = false;

  Widget twotwoCheckbox() =>
      Checkbox(
        value: twotwo,
        onChanged: (value) {
          setState(() {
            this.twotwo = value!;
          });
        },
      );
  bool twofour = false;

  Widget twofourCheckbox() =>
      Checkbox(
        value: twofour,
        onChanged: (value) {
          setState(() {
            this.twofour = value!;
          });
        },
      );
  bool twosix = false;

  Widget twosixCheckbox() =>
      Checkbox(
        value: twosix,
        onChanged: (value) {
          setState(() {
            this.twosix = value!;
          });
        },
      );
  bool twoeight = false;

  Widget twoeightCheckbox() =>
      Checkbox(
        value: twoeight,
        onChanged: (value) {
          setState(() {
            this.twoeight = value!;
          });
        },
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('하루 섭취 칼로리 목표'),
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent[400],
          elevation: 0.0,
        ),
        body: _buildListView()
    );
  }

  ListView _buildListView() {
    return ListView.builder(itemCount:  1,
      itemBuilder: (context, index) {
        return Card(
            child: Column(
              children: [
                ListTile(
                  onTap: () {},
                  title: Text("1600" ),
                  trailing: onesixCheckbox(),
                ),
                ListTile(
                  onTap: () {},
                  title: Text("1800" ),
                  trailing: oneeightCheckbox(),
                ),
                ListTile(
                  onTap: () {},
                  title: Text("2000" ),
                  trailing: twozeroCheckbox(),
                ),
                ListTile(
                  onTap: () {},
                  title: Text("2200" ),
                  trailing: twotwoCheckbox(),
                ),
                ListTile(
                  onTap: () {},
                  title: Text("2400" ),
                  trailing: twofourCheckbox(),
                ),
                ListTile(
                  onTap: () {},
                  title: Text("2600" ),
                  trailing: twosixCheckbox(),
                ),
                ListTile(
                  onTap: () {},
                  title: Text("2800" ),
                  trailing: twoeightCheckbox(),
                ),
                ElevatedButton(child: Text("제출"),
                  onPressed:
                      () {
                    //TODO MyApp페이지로 이동하기
                    MaterialPageRoute route= MaterialPageRoute(builder: (context)=> MyApp());
                    Navigator.push(context, route);},), ],
            )
        );
      },);

  }
}



