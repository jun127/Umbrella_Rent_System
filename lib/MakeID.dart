import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'main.dart';

import 'Login.dart';
import 'RentLog.dart';

class MakeID extends StatefulWidget {
  @override
  _MakeIDState createState() => _MakeIDState();
}

class _MakeIDState extends State<MakeID> {
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

  _onChanged3(String value) {
    setState(() {
      charLength3 = value.length;
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


  final myController3 = TextEditingController();
  @override
  void initState3() {
    super.initState();
    myController3.addListener(_printLatestValue3);
  }

  @override
  void dispose3() {
    myController3.dispose();
    super.dispose();
  }
  void _printLatestValue3() {
    print("Second text field: ${myController3.text}");
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
            leading: IconButton(icon: Icon(Icons.home, size: 30,), onPressed: ()=> {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        RentLog()),
              )
            },
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
                          Icon(Icons.umbrella, size: 70, color: Colors.white70), Text('학번 등록', textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 70, color: Colors.white70), ),
                        ]
                    ),
                    Row(
                        children: [Text('    *학번과 비밀번호를 넣어 학번을 등록해주세요.', textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 30, color: Colors.white70),),
                        ]
                    ),
                  ],
                ),

              ),

              Form(
                key: this.formKey,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 400,
                        width: 700,

                        child: Column(
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
                            TextFormField(
                              decoration: const InputDecoration(
                                labelText: '비밀번호 확인',
                                hintText: '6자 입력해주세요',
                                counterText: '',
                              ),
                              style: TextStyle(fontSize: 25),
                              controller: myController3,
                              inputFormatters: [
                                new LengthLimitingTextInputFormatter(6),
                              ],
                              obscureText: true,
                              keyboardType: TextInputType.number,
                              maxLength: 6,
                              onChanged: _onChanged3,

                            ),
                          ],
                        ),
                      ),

                      Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: 50,
                              width: 110,
                              child: OutlinedButton(
                                onPressed: () async {
                                  if (usernames.contains(myController.text) == true){
                                    if(myController2.text == myController3.text){
                                      if (charLength == 4) {
                                        if (charLength2 == 6) {
                                          if (charLength3 == 6) {
                                            student['${myController.text}'] =
                                            '${myController2.text}';
                                            studentbr.addAll({
                                              '${myController.text}': '0'
                                            });
                                            studentum.addAll({
                                              '${myController.text}': '0'
                                            });

                                            showDialog<String>(
                                              context: context,
                                              builder: (BuildContext context) =>
                                                  AlertDialog(
                                                    title: Text('학번등록 완료!'),
                                                    content: const Text('학번등록이 완료되었습니다.'),
                                                    actions: <Widget>[
                                                      TextButton(
                                                        onPressed: () {
                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    Login()),
                                                          );
                                                        },
                                                        child: const Text('네',
                                                            style: TextStyle(
                                                              color: Colors.black,)),
                                                      ),
                                                    ],
                                                  ),
                                            );
                                          } else {
                                            showDialog<String>(
                                              context: context,
                                              builder: (BuildContext context) =>
                                                  AlertDialog(
                                                    title: Text('비밀번호 길이 짧음'),
                                                    content: const Text('비밀번호를 6자 입력해주세요.'),
                                                    actions: <Widget>[
                                                      TextButton(
                                                        onPressed: () {
                                                          Navigator.of(context).pop();
                                                        },
                                                        child: const Text('네',
                                                            style: TextStyle(
                                                              color: Colors.black,)),
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
                                                  title: Text('비밀번호 길이 짧음'),
                                                  content: const Text('비밀번호를 6자 입력해주세요.'),
                                                  actions: <Widget>[
                                                    TextButton(
                                                      onPressed: () {
                                                        Navigator.of(context).pop();
                                                      },
                                                      child: const Text('네', style: TextStyle(
                                                        color: Colors.black,)),
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
                                                title: Text('학번 길이 짧음'),
                                                content: const Text(
                                                    '학번은 (학년)(반)(번호) 4자로 입력해주세요.'),
                                                actions: <Widget>[
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context).pop();
                                                    },
                                                    child: const Text('네', style: TextStyle(
                                                      color: Colors.black,)),
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
                                              title: Text('비밀번호 불일치'),
                                              content: const Text('비밀번호를 확인 해주세요.'),
                                              actions: <Widget>[
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: const Text('네',
                                                      style: TextStyle(color: Colors.black,)),
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
                                            title: Text('학번 오류'),
                                            content: const Text('정확한 학번이 아닙니다.'),
                                            actions: <Widget>[
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: const Text('네',
                                                    style: TextStyle(color: Colors.black,)),
                                              ),
                                            ],
                                          ),
                                    );
                                  }


                                },

                                child: Text('학번등록', style: TextStyle(fontSize: 20),),
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
                              width: 25,
                            )
                          ]
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}
