import 'package:flutter/material.dart';
import 'main.dart';
import 'Login.dart';
import 'OutlinedCircleButton.dart';
import 'RentLog.dart';









class Rent extends StatefulWidget {

  @override
  _RentState createState() => _RentState();

}




class _RentState extends State<Rent> {




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
        body:  SingleChildScrollView(
          child: Container(
              child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                          color: Colors.black87,
                          height: 200,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                    children: [
                                      Icon(Icons.umbrella, size: 70, color: Colors.white70,), Text('우산 대여', textAlign: TextAlign.start,
                                        style: TextStyle(fontSize: 70, color: Colors.white70),)
                                    ]
                                ),
                                Row(
                                    children: [
                                      Text('    *우산을 골라 대여해주세요.', textAlign: TextAlign.start,
                                        style: TextStyle(fontSize: 30, color: Colors.white70),)
                                    ]
                                )
                              ]
                          )
                      ),

                      Container(
                        child:
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(height: 100),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [

                                  OutlineCircleButton(
                                    child: Center(child: Text('우산1', style: TextStyle(fontSize: 30, )),),
                                    radius: 150.0,
                                    borderSize: 3.0,
                                    onTap: () async {
                                      var snum = nowstudent['id'];
                                      var b = um['um1'];
                                      print('$b');

                                      if(b=='1'){
                                        showDialog (
                                            context : context,
                                            barrierDismissible: false,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                  content: Text('대여된 우산입니다.'),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () { Navigator.of(context).pop();
                                                      },
                                                      child: const Text('네', style: TextStyle(color: Colors.black,)),
                                                    ),
                                                  ]
                                              );
                                            }
                                        );
                                      }
                                      else{
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) => AlertDialog(
                                            title: const Text('우산1', style: TextStyle(fontSize: 20, )),
                                            content: const Text('대여하시겠습니까?', style: TextStyle(fontSize: 15, )),
                                            actions: <Widget>[
                                              TextButton(
                                                onPressed: () => Navigator.of(context).pop(),
                                                child: const Text('아니오', style: TextStyle(color: Colors.black, fontSize: 10)),
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                  showDialog (
                                                      context : context,
                                                      barrierDismissible: false,
                                                      builder: (BuildContext context) {
                                                        return AlertDialog(
                                                            content: Text('대여 완료되었습니다.'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () async { Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(builder: (context) => Login() ),
                                                                );
                                                                um['um1'] = '1';
                                                                studentum['$snum'] = '우산1';
                                                                studentbr['$snum'] = '1';
                                                               umuser['um1'] = '$snum';
                                                                },
                                                                child: const Text('네', style: TextStyle(color: Colors.black,fontSize: 10)),
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

                                      }
                                    },
                                  ),

                                  OutlineCircleButton(
                                      child: Center(child: Text('우산2', style: TextStyle(fontSize: 30, )),),
                                      radius: 150.0,
                                      borderSize: 3.0,
                                      onTap: () async {
                                        var snum = nowstudent['id'];
                                        var b = um['um2'];


                                        if(b=='1'){
                                          showDialog (
                                              context : context,
                                              barrierDismissible: false,
                                              builder: (BuildContext context) {
                                                return AlertDialog(
                                                    content: Text('대여된 우산입니다.'),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () { Navigator.of(context).pop();
                                                        },
                                                        child: const Text('네', style: TextStyle(color: Colors.black,)),
                                                      ),
                                                    ]
                                                );
                                              }
                                          );
                                        }
                                        else{
                                          showDialog<String>(
                                            context: context,
                                            builder: (BuildContext context) => AlertDialog(
                                              title: const Text('우산2'),
                                              content: const Text('대여하시겠습니까?'),
                                              actions: <Widget>[
                                                TextButton(
                                                  onPressed: () => Navigator.of(context).pop(),
                                                  child: const Text('아니오', style: TextStyle(color: Colors.black,)),
                                                ),
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                    showDialog (
                                                        context : context,
                                                        barrierDismissible: false,
                                                        builder: (BuildContext context) {
                                                          return AlertDialog(
                                                              content: Text('대여 완료되었습니다.'),
                                                              actions: [
                                                                TextButton(
                                                                  onPressed: () async { Navigator.push(
                                                                    context,
                                                                    MaterialPageRoute(builder: (context) => Login() ),
                                                                  );
                                                                  um['um2'] = '1';
                                                                  studentum['$snum'] = '우산2';
                                                                  studentbr['$snum'] = '1';
                                                                  umuser['um2'] = '$snum';
                                                                  },
                                                                  child: const Text('네', style: TextStyle(color: Colors.black,)),
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

                                        }
                                      }
                                  ),

                                  OutlineCircleButton(
                                      child: Center(child: Text('우산3',style: TextStyle(fontSize: 30, )),),
                                      radius: 150.0,
                                      borderSize: 3.0,
                                      onTap: () async {
                                        var snum = nowstudent['id'];
                                        var b = um['um3'];


                                        if(b=='1'){
                                          showDialog (
                                              context : context,
                                              barrierDismissible: false,
                                              builder: (BuildContext context) {
                                                return AlertDialog(
                                                    content: Text('대여된 우산입니다.'),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () { Navigator.of(context).pop();
                                                        },
                                                        child: const Text('네', style: TextStyle(color: Colors.black,)),
                                                      ),
                                                    ]
                                                );
                                              }
                                          );
                                        }
                                        else{
                                          showDialog<String>(
                                            context: context,
                                            builder: (BuildContext context) => AlertDialog(
                                              title: const Text('우산3'),
                                              content: const Text('대여하시겠습니까?'),
                                              actions: <Widget>[
                                                TextButton(
                                                  onPressed: () => Navigator.of(context).pop(),
                                                  child: const Text('아니오', style: TextStyle(color: Colors.black,)),
                                                ),
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                    showDialog (
                                                        context : context,
                                                        barrierDismissible: false,
                                                        builder: (BuildContext context) {
                                                          return AlertDialog(
                                                              content: Text('대여 완료되었습니다.'),
                                                              actions: [
                                                                TextButton(
                                                                  onPressed: () async { Navigator.push(
                                                                    context,
                                                                    MaterialPageRoute(builder: (context) => Login() ),
                                                                  );
                                                                  um['um3'] = '1';
                                                                  studentum['$snum'] = '우산3';
                                                                  studentbr['$snum'] = '1';
                                                                  umuser['um3'] = '$snum';

                                                                  },
                                                                  child: const Text('네', style: TextStyle(color: Colors.black,)),
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

                                        }
                                      }
                                  ),
                                ],
                              ),

                              Container(height: 100),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children:[
                                  OutlineCircleButton(
                                    child: Center(child: Text('우산4', style: TextStyle(fontSize: 30, )),),
                                    radius: 150.0,
                                    borderSize: 3.0,
                                    onTap: () async {
                                      var snum = nowstudent['id'];
                                      var b = um['um4'];


                                      if(b=='1'){
                                        showDialog (
                                            context : context,
                                            barrierDismissible: false,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                  content: Text('대여된 우산입니다.'),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () { Navigator.of(context).pop();
                                                      },
                                                      child: const Text('네'),
                                                    ),
                                                  ]
                                              );
                                            }
                                        );
                                      }
                                      else{
                                        showDialog<String>(
                                          context: context,
                                          builder: (BuildContext context) => AlertDialog(
                                            title: const Text('우산4'),
                                            content: const Text('대여하시겠습니까?'),
                                            actions: <Widget>[
                                              TextButton(
                                                onPressed: () => Navigator.of(context).pop(),
                                                child: const Text('아니오', style: TextStyle(color: Colors.black,)),
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                  showDialog (
                                                      context : context,
                                                      barrierDismissible: false,
                                                      builder: (BuildContext context) {
                                                        return AlertDialog(
                                                            content: Text('대여 완료되었습니다.'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () async { Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(builder: (context) => Login() ),
                                                                );
                                                                um['um4'] = '1';
                                                                studentum['$snum'] = '우산4';
                                                                studentbr['$snum'] = '1';
                                                                umuser['um4'] = '$snum';
                                                                },
                                                                child: const Text('네', style: TextStyle(color: Colors.black,)),
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

                                      }
                                    },
                                  ),

                                  OutlineCircleButton(
                                      child: Center(child: Text('우산5',style: TextStyle(fontSize: 30, )),),
                                      radius: 150.0,
                                      borderSize: 3.0,
                                      onTap: () async {
                                        var snum = nowstudent['id'];
                                        var b = um['um5'];


                                        if(b=='1'){
                                          showDialog (
                                              context : context,
                                              barrierDismissible: false,
                                              builder: (BuildContext context) {
                                                return AlertDialog(
                                                    content: Text('대여된 우산입니다.'),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () { Navigator.of(context).pop();
                                                        },
                                                        child: const Text('네', style: TextStyle(color: Colors.black,)),
                                                      ),
                                                    ]
                                                );
                                              }
                                          );
                                        }
                                        else{
                                          showDialog<String>(
                                            context: context,
                                            builder: (BuildContext context) => AlertDialog(
                                              title: const Text('우산5'),
                                              content: const Text('대여하시겠습니까?'),
                                              actions: <Widget>[
                                                TextButton(
                                                  onPressed: () => Navigator.of(context).pop(),
                                                  child: const Text('아니오', style: TextStyle(color: Colors.black,)),
                                                ),
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                    showDialog (
                                                        context : context,
                                                        barrierDismissible: false,
                                                        builder: (BuildContext context) {
                                                          return AlertDialog(
                                                              content: Text('대여 완료되었습니다.'),
                                                              actions: [
                                                                TextButton(
                                                                  onPressed: () async { Navigator.push(
                                                                    context,
                                                                    MaterialPageRoute(builder: (context) => Login() ),
                                                                  );
                                                                  um['um5'] = '1';
                                                                  studentum['$snum'] = '우산5';
                                                                  studentbr['$snum'] = '1';
                                                                  umuser['um5'] = '$snum';
                                                                  },
                                                                  child: const Text('네', style: TextStyle(color: Colors.black,)),
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

                                        }
                                      }
                                  ),

                                  OutlineCircleButton(
                                      child: Center(child: Text('우산6', style: TextStyle(fontSize: 30, )),),
                                      radius: 150.0,
                                      borderSize: 3.0,
                                      onTap: () async {
                                        var snum = nowstudent['id'];
                                        var b = um['um6'];


                                        if(b=='1'){
                                          showDialog (
                                              context : context,
                                              barrierDismissible: false,
                                              builder: (BuildContext context) {
                                                return AlertDialog(
                                                    content: Text('대여된 우산입니다.'),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () { Navigator.of(context).pop();
                                                        },
                                                        child: const Text('네', style: TextStyle(color: Colors.black,)),
                                                      ),
                                                    ]
                                                );
                                              }
                                          );
                                        }
                                        else{
                                          showDialog<String>(
                                            context: context,
                                            builder: (BuildContext context) => AlertDialog(
                                              title: const Text('우산6'),
                                              content: const Text('대여하시겠습니까?'),
                                              actions: <Widget>[
                                                TextButton(
                                                  onPressed: () => Navigator.of(context).pop(),
                                                  child: const Text('아니오', style: TextStyle(color: Colors.black,)),
                                                ),
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                    showDialog (
                                                        context : context,
                                                        barrierDismissible: false,
                                                        builder: (BuildContext context) {
                                                          return AlertDialog(
                                                              content: Text('대여 완료되었습니다.'),
                                                              actions: [
                                                                TextButton(
                                                                  onPressed: () async { Navigator.push(
                                                                    context,
                                                                    MaterialPageRoute(builder: (context) => Login() ),
                                                                  );
                                                                  um['um6'] = '1';
                                                                  studentum['$snum'] = '우산6';
                                                                  studentbr['$snum'] = '1';
                                                                  umuser['um6'] = '$snum';
                                                                  },
                                                                  child: const Text('네', style: TextStyle(color: Colors.black,)),
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

                                        }
                                      }
                                  ),

                                ],
                              ),

                              Container(height: 100),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  OutlineCircleButton(
                                    child: Center(child: Text('우산7', style: TextStyle(fontSize: 30, )),),
                                    radius: 150.0,
                                    borderSize: 3.0,
                                    onTap: () async {
                                      var snum = nowstudent['id'];
                                      var b = um['um7'];


                                      if(b=='1'){
                                        showDialog (
                                            context : context,
                                            barrierDismissible: false,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                  content: Text('대여된 우산입니다.'),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () { Navigator.of(context).pop();
                                                      },
                                                      child: const Text('네', style: TextStyle(color: Colors.black,)),
                                                    ),
                                                  ]
                                              );
                                            }
                                        );
                                      }
                                      else{
                                        showDialog<String>(
                                          context: context,
                                          builder: (BuildContext context) => AlertDialog(
                                            title: const Text('우산7'),
                                            content: const Text('대여하시겠습니까?'),
                                            actions: <Widget>[
                                              TextButton(
                                                onPressed: () => Navigator.of(context).pop(),
                                                child: const Text('아니오', style: TextStyle(color: Colors.black,)),
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                  showDialog (
                                                      context : context,
                                                      barrierDismissible: false,
                                                      builder: (BuildContext context) {
                                                        return AlertDialog(
                                                            content: Text('대여 완료되었습니다.'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () async { Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(builder: (context) => Login() ),
                                                                );
                                                                um['um7'] = '1';
                                                                studentum['$snum'] = '우산7';
                                                                studentbr['$snum'] = '1';
                                                                umuser['um7'] = '$snum';
                                                                },
                                                                child: const Text('네', style: TextStyle(color: Colors.black,)),
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

                                      }
                                    },
                                  ),

                                  OutlineCircleButton(
                                      child: Center(child: Text('우산8', style: TextStyle(fontSize: 30, )),),
                                      radius: 150.0,
                                      borderSize: 3.0,
                                      onTap: () async {
                                        var snum = nowstudent['id'];
                                        var b = um['um8'];


                                        if(b=='1'){
                                          showDialog (
                                              context : context,
                                              barrierDismissible: false,
                                              builder: (BuildContext context) {
                                                return AlertDialog(
                                                    content: Text('대여된 우산입니다.'),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () { Navigator.of(context).pop();
                                                        },
                                                        child: const Text('네', style: TextStyle(color: Colors.black,)),
                                                      ),
                                                    ]
                                                );
                                              }
                                          );
                                        }
                                        else{
                                          showDialog<String>(
                                            context: context,
                                            builder: (BuildContext context) => AlertDialog(
                                              title: const Text('우산8'),
                                              content: const Text('대여하시겠습니까?'),
                                              actions: <Widget>[
                                                TextButton(
                                                  onPressed: () => Navigator.of(context).pop(),
                                                  child: const Text('아니오', style: TextStyle(color: Colors.black,)),
                                                ),
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                    showDialog (
                                                        context : context,
                                                        barrierDismissible: false,
                                                        builder: (BuildContext context) {
                                                          return AlertDialog(
                                                              content: Text('대여 완료되었습니다.'),
                                                              actions: [
                                                                TextButton(
                                                                  onPressed: () async { Navigator.push(
                                                                    context,
                                                                    MaterialPageRoute(builder: (context) => Login() ),
                                                                  );
                                                                  um['um8'] = '1';
                                                                  studentum['$snum'] = '우산8';
                                                                  studentbr['$snum'] = '1';
                                                                  umuser['um8'] = '$snum';
                                                                  },
                                                                  child: const Text('네', style: TextStyle(color: Colors.black,)),
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

                                        }
                                      }
                                  ),

                                  OutlineCircleButton(
                                      child: Center(child: Text('우산9', style: TextStyle(fontSize: 30, )),),
                                      radius: 150.0,
                                      borderSize: 3.0,
                                      onTap: () async {
                                        var snum = nowstudent['id'];
                                        var b = um['um9'];


                                        if(b=='1'){
                                          showDialog (
                                              context : context,
                                              barrierDismissible: false,
                                              builder: (BuildContext context) {
                                                return AlertDialog(
                                                    content: Text('대여된 우산입니다.'),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () { Navigator.of(context).pop();
                                                        },
                                                        child: const Text('네', style: TextStyle(color: Colors.black,)),
                                                      ),
                                                    ]
                                                );
                                              }
                                          );
                                        }
                                        else{
                                          showDialog<String>(
                                            context: context,
                                            builder: (BuildContext context) => AlertDialog(
                                              title: const Text('우산9'),
                                              content: const Text('대여하시겠습니까?'),
                                              actions: <Widget>[
                                                TextButton(
                                                  onPressed: () => Navigator.of(context).pop(),
                                                  child: const Text('아니오', style: TextStyle(color: Colors.black,)),
                                                ),
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                    showDialog (
                                                        context : context,
                                                        barrierDismissible: false,
                                                        builder: (BuildContext context) {
                                                          return AlertDialog(
                                                              content: Text('대여 완료되었습니다.'),
                                                              actions: [
                                                                TextButton(
                                                                  onPressed: () async { Navigator.push(
                                                                    context,
                                                                    MaterialPageRoute(builder: (context) => Login() ),
                                                                  );
                                                                  um['um9'] = '1';
                                                                  studentum['$snum'] = '우산9';
                                                                  studentbr['$snum'] = '1';
                                                                  umuser['um9'] = '$snum';
                                                                  },
                                                                  child: const Text('네', style: TextStyle(color: Colors.black,)),
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

                                        }
                                      }
                                  ),

                                ],
                              ),

                              Container(height: 100),

                              Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children:[
                                    OutlineCircleButton(
                                      child: Center(child: Text('우산10', style: TextStyle(fontSize: 30, )),),
                                      radius: 150.0,
                                      borderSize: 3.0,
                                      onTap: () async {
                                        var snum = nowstudent['id'];
                                        var b = um['um10'];


                                        if(b=='1'){
                                          showDialog (
                                              context : context,
                                              barrierDismissible: false,
                                              builder: (BuildContext context) {
                                                return AlertDialog(
                                                    content: Text('대여된 우산입니다.'),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () { Navigator.of(context).pop();
                                                        },
                                                        child: const Text('네', style: TextStyle(color: Colors.black,)),
                                                      ),
                                                    ]
                                                );
                                              }
                                          );
                                        }
                                        else{
                                          showDialog<String>(
                                            context: context,
                                            builder: (BuildContext context) => AlertDialog(
                                              title: const Text('우산10'),
                                              content: const Text('대여하시겠습니까?'),
                                              actions: <Widget>[
                                                TextButton(
                                                  onPressed: () => Navigator.of(context).pop(),
                                                  child: const Text('아니오', style: TextStyle(color: Colors.black,)),
                                                ),
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                    showDialog (
                                                        context : context,
                                                        barrierDismissible: false,
                                                        builder: (BuildContext context) {
                                                          return AlertDialog(
                                                              content: Text('대여 완료되었습니다.'),
                                                              actions: [
                                                                TextButton(
                                                                  onPressed: () async { Navigator.push(
                                                                    context,
                                                                    MaterialPageRoute(builder: (context) => Login() ),
                                                                  );
                                                                  um['um10'] = '1';
                                                                  studentum['$snum'] = '우산10';
                                                                  studentbr['$snum'] = '1';
                                                                  umuser['um10'] = '$snum';
                                                                  },
                                                                  child: const Text('네', style: TextStyle(color: Colors.black,)),
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

                                        }
                                      },
                                    ),

                                    OutlineCircleButton(
                                        child: Center(child: Text('우산11', style: TextStyle(fontSize: 30, )),),
                                        radius: 150.0,
                                        borderSize: 3.0,
                                        onTap: () async {
                                          var snum = nowstudent['id'];
                                          var b = um['um11'];


                                          if(b=='1'){
                                            showDialog (
                                                context : context,
                                                barrierDismissible: false,
                                                builder: (BuildContext context) {
                                                  return AlertDialog(
                                                      content: Text('대여된 우산입니다.'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () { Navigator.of(context).pop();
                                                          },
                                                          child: const Text('네',style: TextStyle(color: Colors.black,)),
                                                        ),
                                                      ]
                                                  );
                                                }
                                            );
                                          }
                                          else{
                                            showDialog<String>(
                                              context: context,
                                              builder: (BuildContext context) => AlertDialog(
                                                title: const Text('우산11'),
                                                content: const Text('대여하시겠습니까?'),
                                                actions: <Widget>[
                                                  TextButton(
                                                    onPressed: () => Navigator.of(context).pop(),
                                                    child: const Text('아니오', style: TextStyle(color: Colors.black,)),
                                                  ),
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context).pop();
                                                      showDialog (
                                                          context : context,
                                                          barrierDismissible: false,
                                                          builder: (BuildContext context) {
                                                            return AlertDialog(
                                                                content: Text('대여 완료되었습니다.'),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed: () async { Navigator.push(
                                                                      context,
                                                                      MaterialPageRoute(builder: (context) => Login() ),
                                                                    );
                                                                    um['um11'] = '1';
                                                                    studentum['$snum'] = '우산11';
                                                                    studentbr['$snum'] = '1';
                                                                    umuser['um11'] = '$snum';
                                                                    },
                                                                    child: const Text('네', style: TextStyle(color: Colors.black,)),
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

                                          }
                                        }
                                    ),

                                    OutlineCircleButton(
                                        child: Center(child: Text('우산12', style: TextStyle(fontSize: 30, )),),
                                        radius: 150.0,
                                        borderSize: 3.0,
                                        onTap: () async {
                                          var snum = nowstudent['id'];
                                          var b = um['um12'];


                                          if(b=='1'){
                                            showDialog (
                                                context : context,
                                                barrierDismissible: false,
                                                builder: (BuildContext context) {
                                                  return AlertDialog(
                                                      content: Text('대여된 우산입니다.'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () { Navigator.of(context).pop();
                                                          },
                                                          child: const Text('네',style: TextStyle(color: Colors.black,)),
                                                        ),
                                                      ]
                                                  );
                                                }
                                            );
                                          }
                                          else{
                                            showDialog<String>(
                                              context: context,
                                              builder: (BuildContext context) => AlertDialog(
                                                title: const Text('우산12'),
                                                content: const Text('대여하시겠습니까?'),
                                                actions: <Widget>[
                                                  TextButton(
                                                    onPressed: () => Navigator.of(context).pop(),
                                                    child: const Text('아니오',style: TextStyle(color: Colors.black,)),
                                                  ),
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context).pop();
                                                      showDialog (
                                                          context : context,
                                                          barrierDismissible: false,
                                                          builder: (BuildContext context) {
                                                            return AlertDialog(
                                                                content: Text('대여 완료되었습니다.'),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed: () async { Navigator.push(
                                                                      context,
                                                                      MaterialPageRoute(builder: (context) => Login() ),
                                                                    );
                                                                    um['um12'] = '1';
                                                                    studentum['$snum'] = '우산12';
                                                                    studentbr['$snum'] = '1';
                                                                    umuser['um12'] = '$snum';
                                                                    },
                                                                    child: const Text('네',style: TextStyle(color: Colors.black,)),
                                                                  ),
                                                                ]
                                                            );
                                                          }
                                                      );




                                                    },
                                                    child: const Text('네',style: TextStyle(color: Colors.black,)),
                                                  ),
                                                ],
                                              ),
                                            );

                                          }
                                        }
                                    ),

                                  ]
                              ),

                              Container(height: 100),

                            ]
                        ),

                      ),


                    ],
                  )
              )
          ),
        )

    );



  }

}

