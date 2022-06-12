import 'package:flutter/material.dart';

import 'main.dart';
import 'Login.dart';
import 'Rent.dart';
import 'Return.dart';
import 'RentLog.dart';

class ChooseRR extends StatefulWidget {
  @override
  _ChooseRRState createState() => _ChooseRRState();
}

class _ChooseRRState extends State<ChooseRR> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0), // here the desired height
        child: AppBar(
          title: Text("양심우산 무인 대여시스템", style: TextStyle(fontSize: 30),),
          leading: IconButton(icon: Icon(Icons.home), onPressed: () => {
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: Text('로그인 페이지로 돌아가기'),
            content: const Text('모든 과정을 종료하고 로그인 페이지로 돌아가시겠습니까?'),
            actions: <Widget>[
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('아니오',  style: TextStyle(color: Colors.black,),)
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login() ),
                  );
                },
                child: const Text('네', style: TextStyle(color: Colors.black,)),
              ),
            ],

          ),
        )
      }
      ),
          backgroundColor: Colors.black,
          actions: [
            IconButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            RentLog()),
                  );
                },
                icon: Icon(Icons.umbrella_rounded, size: 40,)),
            Container(width: 30,)
          ],
        ),),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children :[
              Container(
                  color: Colors.black87,
                  height: 180,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Row(
                          children: [
                            Icon(Icons.umbrella, size: 70, color: Colors.white,), Text('대여/반납', textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 70, color: Colors.white70),),
                          ]
                      ),
                      Row(
                          children: [
                            Text('    *대여/반납중 하나를 클릭하세요.', textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 30, color: Colors.white70), )
                          ]
                      ),
                    ],
                  )
              ),
              Container(
                  height: 300
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 300,
                      width: 300,

                      child: OutlinedButton(
                        onPressed: () async{
                          var snum = nowstudent['id'];
                          var sbr = studentbr['$snum'];
                          //빌렸는가 안빌렸는가 0/1 판단
                          print('$sbr');

                          if(sbr == '1'){

                            showDialog (
                                context : context,
                                barrierDismissible: false,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                      content: Text('이미 대여한 우산이 있습니다. \n반납 버튼을 눌러 주세요'),
                                      actions: [
                                        TextButton(
                                          onPressed: () => Navigator.of(context).pop(),
                                          child: const Text('네', style: TextStyle(color: Colors.black)),
                                        ),
                                      ]
                                  );
                                }
                            );
                          }
                          else{
                            Navigator.push(
                              context,MaterialPageRoute(builder: (context) => Rent() ),
                            );
                          }
                        },
                        child: Text('대여', style: TextStyle(fontSize: 40, ),),
                        style: OutlinedButton.styleFrom(
                            primary: Colors.black,
                            side: BorderSide(
                                color: Colors.black,
                                width: 3.0
                            )
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 300,
                      width: 300,

                      child: OutlinedButton(
                        onPressed: () async{
                          var snum = nowstudent['id'];
                          var sbr = studentbr['$snum'];
                          if(sbr=='1'){
                            Navigator.push(
                              context,MaterialPageRoute(builder: (context) => Return()),
                            );
                          }else{
                            showDialog (
                                context : context,
                                barrierDismissible: false,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                      content: Text('대여한 우산이 없습니다.'),
                                      actions: [
                                        TextButton(
                                          onPressed: () => Navigator.of(context).pop(),
                                          child: const Text('네',style: TextStyle(color: Colors.black)),
                                        ),
                                      ]
                                  );
                                }
                            );
                          }

                        },
                        child: Text('반납', style: TextStyle(fontSize: 40),),
                        style: OutlinedButton.styleFrom(
                            primary: Colors.black,
                            side: BorderSide(
                              color: Colors.black,
                              width: 3.0,
                            )
                        ),
                      ),
                    ),
                  ]
              ),
            ]
        ),
      ),
    );
  }
}