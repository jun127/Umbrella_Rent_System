import 'package:flutter/material.dart';

import 'Login.dart';
import 'RentLog.dart';
import 'main.dart';


class Return extends StatefulWidget {
  @override
  _ReturnState createState() => _ReturnState();

}


class _ReturnState extends State<Return> {


  @override
  Widget build(BuildContext context) {
    var snum = nowstudent['id'];
    var b = studentum['$snum'];
    return Scaffold(
      appBar:PreferredSize(
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
          children: [
            Container(
                color: Colors.black87,
                height: 180,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                          children: [

                            Icon(Icons.umbrella, size: 70, color: Colors.white70), Text('반납', textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 70, color: Colors.white70), ),
                          ]
                      ),
                      Row(
                          children: [
                            Text('     *버튼을 눌러 우산을 반납해주세요.', textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 30, color: Colors.white70),),
                          ]
                      )
                    ]
                )
            ),
            Container(
              height: 250,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 450,
                    width: 450,

                    child: OutlinedButton(
                      onPressed: () async {


                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: Text('$b'),
                            content: const Text('반납하시겠습니까?'),
                            actions: <Widget>[
                              TextButton(
                                  onPressed: () => Navigator.of(context).pop(),
                                  child: const Text('아니오',  style: TextStyle(color: Colors.black,),)
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  showDialog (
                                      context : context,
                                      barrierDismissible: false,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                            content: Text('반납 완료되었습니다.'),
                                            actions: [
                                              TextButton(
                                                onPressed: () async { Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => Login() ),
                                                );
                                                switch(b){
                                                  case'우산1':
                                                    um['um1'] = '0';
                                                    studentum['$snum'] = '0';
                                                    studentbr['$snum'] = '0';
                                                    umuser['um1'] = '없음';

                                                    break;

                                                  case'우산2':
                                                    um['um2'] = '0';
                                                    studentum['$snum'] = '0';
                                                    studentbr['$snum'] = '0';
                                                    umuser['um2'] = '없음';

                                                    break;

                                                  case'우산3':
                                                    um['um3'] = '0';
                                                    studentum['$snum'] = '0';
                                                    studentbr['$snum'] = '0';
                                                    umuser['um3'] = '없음';
                                                    break;

                                                  case'우산4':
                                                    um['um4'] = '0';
                                                    studentum['$snum'] = '0';
                                                    studentbr['$snum'] = '0';
                                                    umuser['um4'] = '없음';
                                                    break;

                                                  case'우산5':
                                                    um['um5'] = '0';
                                                    studentum['$snum'] = '0';
                                                    studentbr['$snum'] = '0';
                                                    umuser['um5'] = '없음';
                                                    break;

                                                  case'우산6':
                                                    um['um6'] = '0';
                                                    studentum['$snum'] = '0';
                                                    studentbr['$snum'] = '0';
                                                    umuser['um6'] = '없음';
                                                    break;

                                                  case'우산7':
                                                    um['um7'] = '0';
                                                    studentum['$snum'] = '0';
                                                    studentbr['$snum'] = '0';
                                                    umuser['um7'] = '없음';
                                                    break;

                                                  case'우산8':
                                                    um['um8'] = '0';
                                                    studentum['$snum'] = '0';
                                                    studentbr['$snum'] = '0';
                                                    umuser['um8'] = '없음';
                                                    break;

                                                  case'우산9':
                                                    um['um9'] = '0';
                                                    studentum['$snum'] = '0';
                                                    studentbr['$snum'] = '0';
                                                    umuser['um9'] = '없음';
                                                    break;

                                                  case'우산10':
                                                    um['um10'] = '0';
                                                    studentum['$snum'] = '0';
                                                    studentbr['$snum'] = '0';
                                                    umuser['um10'] = '없음';
                                                    break;

                                                  case'우산11':
                                                    um['um11'] = '0';
                                                    studentum['$snum'] = '0';
                                                    studentbr['$snum'] = '0';
                                                    umuser['um11'] = '없음';
                                                    break;

                                                  case'우산12':
                                                    um['um12'] = '0';
                                                    studentum['$snum'] = '0';
                                                    studentbr['$snum'] = '0';
                                                    umuser['um12'] = '없음';
                                                    break;

                                                }
                                                },
                                                child: const Text('네', style: TextStyle(color: Colors.black)),
                                              ),
                                            ]
                                        );
                                      }
                                  );




                                },
                                child: const Text('네', style: TextStyle(color: Colors.black,)),
                              ),
                            ],
                          ),
                        );




                      },

                      child: Text('$b 반납하기', style: TextStyle(fontSize: 50),),
                      style: OutlinedButton.styleFrom(
                          primary: Colors.black,
                          side: BorderSide(
                              color: Colors.black,
                              width: 3.0
                          )
                      ),
                    ),
                  ),

                ]
            ),
          ],
        ),
      ),
    );
  }
}
