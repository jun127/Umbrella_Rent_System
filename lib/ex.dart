import 'package:flutter/material.dart';

import 'Login.dart';
import 'RentLog.dart';
import 'main.dart';


class ex extends StatefulWidget {
  @override
  _exState createState() => _exState();

}


class _exState extends State<ex> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 800,
                height: 400,
                color: Colors.white38,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Icon(Icons.umbrella, size: 60, color: Colors.white,),
                      Text('양심우산 무인 대여 시스템', style: TextStyle(fontSize: 50, color: Colors.white),)
                    ]),
                      Container(height: 20,),
                      Text('양심우산 무인 대여 시스템은 학번 확인을 위해 로그인이 필요합니다.', style: TextStyle(fontSize: 20, color: Colors.white),),
                      Text('다음 버튼을 눌러 로그인 페이지로 이동해주세요.', style: TextStyle(fontSize: 20, color: Colors.white),),
                    ]
                ),
              ),
              SizedBox(
                height: 40,
                width: 80,
                child: OutlinedButton(
                  onPressed: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Login()),
                    );
                  },
                  child: Text('다음', style: TextStyle(fontSize: 20, color: Colors.blue)),
                  style: OutlinedButton.styleFrom(
                      primary: Colors.black,
                      onSurface: Colors.black,
                      side: BorderSide(
                          color: Colors.black,
                          width: 2.0
                      )
                  ),
                ),
              ),
            ]
        ),
        ),
      );
  }
}
