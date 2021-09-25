import 'dart:async';
import 'dart:io';


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

import 'package:flutter/material.dart';
import "package:http/http.dart" as http;
import 'dart:convert';

import 'data/ApiResponse.dart';





// 시작
//void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}



// _MyAppState
class _MyAppState extends State<MyApp> {
  String _scanBarcode = 'Unknown';

  @override
  void initState() {
    super.initState();
  }

  // scanBarcodeNormal (Function)
  Future<void> scanBarcodeNormal(BuildContext context) async {
    String barcodeScanRes;
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.BARCODE);
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }

    if (!mounted) return;

    setState(() {
      _scanBarcode = barcodeScanRes;
    });
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MyHomePage(title: '', barcode: _scanBarcode), //title을 요구해서 컴파일 오류만 안나게 처리함
        ));
  }

  // Widget build
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text('Barcode scan')),
            body: Builder(builder: (BuildContext context) {
              return Container(
                  alignment: Alignment.center,
                  child: Flex(
                      direction: Axis.vertical,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton(
                            onPressed: () {
                              scanBarcodeNormal(context);
                            },
                            child: Text('Start barcode scan')),

                        Text('Scan result : $_scanBarcode\n',
                            style: TextStyle(fontSize: 20))
                      ]));
            })));
  }
}




// Class MyHomePage
class MyHomePage extends StatefulWidget {
  MyHomePage( {Key? key, required this.title, required this.barcode}) : super(key: key);
  final String title;
  //var barcode='_scanBarcode'; //++++바코드 입력받음!
  String barcode;
  final String aller = 'unknown';

  @override
  _MyHomePageState createState() => _MyHomePageState(barcode);

/*
  //수정 시작
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("second page"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("go to first page"),
        ),
      ),
    );
  }
  //수정 완료
  */

}



class _MyHomePageState extends State<MyHomePage> {
  String authkey ='33bdb62172294843a400';
  String authkey2 = 'Gj5JY2TDy07OsBlp%2F49dXG87xxg5MVf221%2FuJnysOWMhbqS5V9LELnodfK025BwqZpSMM2rtG%2BT2UrGBJDgoog%3D%3D';
  var barcode;

  //var aller = ' SAMPLE ';
  //dynamic all = 'er;
  //var aller;

  // 너무 길이서 변수로 나눔.
  //var jsonString1='{"C005":{"RESULT":{"MSG":"정상처리되었습니다.","CODE":"INFO-000"},';
  //var jsonString2='"total_count":"100797","row":[{"BAR_CD":"123","PRDLST_NM":"123","PRDLST_REPORT_NO":"123"},';
  //var jsonString3='{"BAR_CD":"111","PRDLST_NM":"111","PRDLST_REPORT_NO":"111"}]}}';
  //var jsonString;
  void getFoodNum(String barcd)async {
    var jsonUrl = "http://openapi.foodsafetykorea.go.kr/api/$authkey/C005/json/1/5" +
        '/BAR_CD=$barcd';
    print(jsonUrl);

    var response = await http.get(Uri.parse(jsonUrl));
    var result=BarcodeApiResponse.fromJson(jsonDecode(response.body));
    //print(result.c005.result.message);
    //print(result.c005.row[0].name);
    //String keynum = result.c005.row[0].foodnum;
    var jsonUrl2 = "http://apis.data.go.kr/B553748/CertImgListService/getCertImgListService?serviceKey=$authkey2"+"&returnType=json&prdlstReportNo="+result.c005.row[0].foodnum;
    var response2 = await http.get(Uri.parse(jsonUrl2));
    var result2 = BarcodeApiResponse2.fromJson(jsonDecode(response2.body));
    print(result2.list[0].nutrient);
    print(result2.list[0].rawmtrl);
    print(result2.list[0].img);
    print(result2.list[0].capacity);
    print(result2.list[0].allergy);
    String rawmtrl = result2.list[0].rawmtrl;
    var arr = rawmtrl.split(',');
    String aller = result2.list[0].allergy;
    for(int i = 0;i<9;i++){
      print(arr[i]);
    }
    print(arr);
    //return aller;
  }
  _MyHomePageState(String barcode){
    //jsonString='$jsonString1$jsonString2$jsonString3';
    this.barcode=barcode;
    getFoodNum(this.barcode);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              widget.aller
            ),
          ],
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}