import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:umbrella_rent_system/Adminpage.dart';

import 'main.dart';
import 'MakeID.dart';
import 'ChooseRR.dart';
import 'RentLog.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  final myController = TextEditingController();

  int charLength = 0;
  int charLength2 = 0;
  int charLength3 = 0;

  _onChanged(String value) {
    setState(() {
      charLength = value.length;
    });
  }

  _onChanged2(String value) {
    setState(() {
      charLength2 = value.length;
    });
  }


  @override
  void initState() {
    super.initState();
    myController.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }
  void _printLatestValue() {
    print("Second text field: ${myController.text}");
  }

  final myController2 = TextEditingController();
  @override
  void initState2() {
    super.initState();
    myController2.addListener(_printLatestValue2);
  }

  @override
  void dispose2() {

    myController2.dispose();
    super.dispose();
  }
  void _printLatestValue2() {
    print("Second text field: ${myController2.text}");
  }

  Map check = {
    'id': '0',
    'pw': '0'
  };
  Map prestudent = {
    'id': '',
    'pw': ''
  };


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0), // here the desired height
          child: AppBar(
          title: Text("양심우산 무인 대여시스템", style: TextStyle(fontSize: 30),),
          leading: Icon(Icons.home, size: 30,),
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
                    child: Column (
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                              children: [
                                Icon(Icons.umbrella, size: 70, color: Colors.white70), Text('로그인', textAlign: TextAlign.start,
                                  style: TextStyle(fontSize: 70, color: Colors.white70), ),
                              ]
                          ),
                          Row(
                              children: [
                                Text('     *학번 확인을 위해 학번과 비밀번호를 입력해주세요.', textAlign: TextAlign.start,
                                  style: TextStyle(fontSize: 30, color: Colors.white70),),
                              ]
                          )
                        ]
                    ),
                  ),
                  Form(
                    key: this.formKey,
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                height: 300,
                                width: 700,
                                child: Column (
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      TextFormField(
                                        decoration: const InputDecoration(
                                          labelText: '학번',
                                          hintText: 'ex) 2901(학년)(반)(번호)',
                                          counterText: '',
                                        ),
                                        style: TextStyle(fontSize: 25),
                                        controller: myController,
                                        inputFormatters: [
                                          new LengthLimitingTextInputFormatter(4),
                                        ],
                                        keyboardType: TextInputType.number,
                                        maxLength: 4,
                                        onChanged: _onChanged,

                                      ),
                                      TextFormField(
                                        decoration: const InputDecoration(
                                          labelText: '비밀번호',
                                          hintText: '6자 입력해주세요',
                                          counterText: '',
                                        ),
                                        style: TextStyle(fontSize: 25),
                                        controller: myController2,
                                        inputFormatters: [
                                          new LengthLimitingTextInputFormatter(6),
                                        ],
                                        obscureText: true,
                                        keyboardType: TextInputType.number,
                                        maxLength: 6,
                                        onChanged: _onChanged2,

                                      ),
                                    ]
                                )
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    height: 50,
                                    width: 110,
                                    child: OutlinedButton(
                                      onPressed: () async {
                                        if(student['${myController.text}'] == '${myController2.text}') {
                                          if(charLength == 4){
                                            if(charLength2 ==6 ){
                                              nowstudent['id'] = '${myController.text}';
                                              nowstudent['pw'] = '${myController2.text}';

                                              if (myController.text == 9999) {
                                                um['um1'] = '0';
                                                um['um2'] = '0';
                                                um['um3'] = '0';
                                                um['um4'] = '0';
                                                um['um5'] = '0';
                                                um['um6'] = '0';
                                                um['um7'] = '0';
                                                um['um8'] = '0';
                                                um['um9'] = '0';
                                                um['um10'] = '0';
                                                um['um11'] = '0';
                                                um['um12'] = '0';
                                              }

                                              if (myController.text == '0111') {
                                                showDialog<String>(
                                                  context: context,
                                                  builder: (BuildContext context) =>
                                                      AlertDialog(
                                                        title: Text('블루투스 연결용'),
                                                        content: const Text(''),
                                                        actions: <Widget>[
                                                          TextButton(
                                                            onPressed: () {
                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder: (context) =>
                                                                        Adminpage()),
                                                              );
                                                            },
                                                            child: const Text('네', style: TextStyle(color: Colors.black,)),
                                                          ),
                                                        ],
                                                      ),
                                                );
                                              }else {
                                                showDialog<String>(
                                                  context: context,
                                                  builder: (BuildContext context) =>
                                                      AlertDialog(
                                                        title: Text('학번확인 완료!'),
                                                        content: const Text('학번확인이 완료되었습니다.'),
                                                        actions: <Widget>[
                                                          TextButton(
                                                            onPressed: () {
                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder: (context) =>
                                                                        ChooseRR()),
                                                              );
                                                            },
                                                            child: const Text('네', style: TextStyle(color: Colors.black,)),
                                                          ),
                                                        ],
                                                      ),
                                                );
                                              }
                                            }else{
                                              showDialog<String>(
                                                context: context,
                                                builder: (BuildContext context) =>
                                                    AlertDialog(
                                                      title: Text('비밀번호 길이 짧음'),
                                                      content: const Text('비밀번호는 6자 입력해주세요.'),
                                                      actions: <Widget>[
                                                        TextButton(
                                                          onPressed: () {
                                                            Navigator.of(context).pop();
                                                          },
                                                          child: const Text('네', style: TextStyle(color: Colors.black,)),
                                                        ),
                                                      ],
                                                    ),
                                              );
                                            }
                                          }else{
                                            showDialog<String>(
                                              context: context,
                                              builder: (BuildContext context) =>
                                                  AlertDialog(
                                                    title: Text('학번 길이 짧음'),
                                                    content: const Text('학번은 (학년)(반)(번호) 4자로 입력해주세요.'),
                                                    actions: <Widget>[
                                                      TextButton(
                                                        onPressed: () {
                                                          Navigator.of(context).pop();
                                                        },
                                                        child: const Text('네', style: TextStyle(color: Colors.black,)),
                                                      ),
                                                    ],
                                                  ),
                                            );
                                          }
                                        } else {
                                          showDialog<String>(
                                            context: context,
                                            builder: (BuildContext context) =>
                                                AlertDialog(
                                                  title: Text('비밀번호 틀림'),
                                                  content: const Text('비밀번호가 틀렸습니다.'),
                                                  actions: <Widget>[
                                                    TextButton(
                                                      onPressed: () {
                                                        Navigator.of(context).pop();
                                                      },
                                                      child: const Text('네', style: TextStyle(color: Colors.black,)),
                                                    ),
                                                  ],
                                                ),
                                          );
                                        }



                                      },

                                      child: Text('로그인', style: TextStyle(fontSize: 20),),
                                      style: OutlinedButton.styleFrom(
                                          primary: Colors.black,
                                          side: BorderSide(
                                              color: Colors.black,
                                              width: 2.0
                                          )
                                      ),
                                    ),
                                  ),

                                  Container(
                                      width: 5
                                  ),

                                  SizedBox(
                                    height: 50,
                                    width: 110,
                                    child: OutlinedButton(
                                      onPressed: () async {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => MakeID()),
                                        );
                                      },
                                      child: Text('학번등록', style: TextStyle(fontSize: 20)),
                                      style: OutlinedButton.styleFrom(
                                          primary: Colors.black,
                                          side: BorderSide(
                                              color: Colors.black,
                                              width: 2.0
                                          )
                                      ),
                                    ),
                                  ),

                                  Container(
                                      width: 30
                                  ),
                                ]
                            ),
                          ]
                      ),
                    ),
                  ),
                ]
            )
        )
    );
  }
}



