import 'package:flutter/material.dart';

import 'main.dart';
import 'Login.dart';

class RentLog extends StatefulWidget {
  @override
  _RentLogState createState() => _RentLogState();
}

class _RentLogState extends State<RentLog> {

  bool rLog1 = false;
  bool rLog2 = false;
  bool rLog3 = false;
  bool rLog4 = false;
  bool rLog5 = false;
  bool rLog6 = false;
  bool rLog7 = false;
  bool rLog8 = false;
  bool rLog9 = false;
  bool rLog10 = false;
  bool rLog11 = false;
  bool rLog12 = false;

  var user1 = '없음';
  var user2 = '없음';
  var user3 = '없음';
  var user4 = '없음';
  var user5 = '없음';
  var user6 = '없음';
  var user7 = '없음';
  var user8 = '없음';
  var user9 = '없음';
  var user10 = '없음';
  var user11 = '없음';
  var user12 = '없음';




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0), // here the desired height
    child: AppBar(
        title: Text("양심우산 무인 대여시스템", style: TextStyle(fontSize: 30), ),
        backgroundColor: Colors.black,),),
      body: SingleChildScrollView(
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
                            Icon(Icons.umbrella, size: 70, color: Colors.white,), Text('우산 현황', textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 70, color: Colors.white70),),
                          ]
                      ),
                    ],
                  )
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(height: 15,),

                    Container(
                        width: 800,
                        color: Colors.white38,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('우산1', style: TextStyle(fontSize: 50)), Text('대여한 사람: $user1', style: TextStyle(fontSize: 20)),
                            Container(width: 260,),
                            IconButton(
                                onPressed: (){
                                  setState(() {user1 = umuser['um1'];});
                                  um['um1']=='1' ? setState(() {rLog1 = true;}) : setState(() {rLog1 = false;});
                                  },
                                icon: Icon(Icons.cached, size: 40,)
                            ),
                            Container(width: 20),
                            rLog1 == true ? Text('대여중', style: TextStyle(fontSize: 40, color: Colors.red)) : Text('대여가능', style: TextStyle(fontSize: 40, color: Colors. green))
                          ],
                        )

                    ),

                    Container(height: 15,),

                    Container(
                        width: 800,
                        color: Colors.white38,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('우산2', style: TextStyle(fontSize: 50)), Text('대여한 사람: $user2', style: TextStyle(fontSize: 20)),
                            Container(width: 260,),
                            IconButton(
                                onPressed: (){
                                  setState(() {user2 = umuser['um2'];});
                                  um['um2']=='1' ? setState(() {rLog2 = true;}) : setState(() {rLog2 = false;});},
                                icon: Icon(Icons.cached, size: 40,)
                            ),
                            Container(width: 20),
                            rLog2 == true ? Text('대여중', style: TextStyle(fontSize: 40, color: Colors.red)) : Text('대여가능', style: TextStyle(fontSize: 40, color: Colors. green))
                          ],
                        )

                    ),

                    Container(height: 15,),

                    Container(
                        width: 800,
                        color: Colors.white38,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('우산3', style: TextStyle(fontSize: 50)),Text('대여한 사람: $user3', style: TextStyle(fontSize: 20)),
                            Container(width: 260,),
                            IconButton(
                                onPressed: (){
                                  setState(() {user3 = umuser['um3'];});
                                  um['um3']=='1' ? setState(() {rLog3 = true;}) : setState(() {rLog3 = false;});},
                                icon: Icon(Icons.cached, size: 40,)
                            ),
                            Container(width: 20),
                            rLog3 == true ? Text('대여중', style: TextStyle(fontSize: 40, color: Colors.red)) : Text('대여가능', style: TextStyle(fontSize: 40, color: Colors. green))
                          ],
                        )

                    ),

                    Container(height: 15,),

                    Container(
                        width: 800,
                        color: Colors.white38,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('우산4', style: TextStyle(fontSize: 50)),Text('대여한 사람: $user4', style: TextStyle(fontSize: 20)),
                            Container(width: 260,),
                            IconButton(
                                onPressed: (){
                                  setState(() {user4 = umuser['um4'];});
                                  um['um4']=='1' ? setState(() {rLog4 = true;}) : setState(() {rLog4 = false;});},
                                icon: Icon(Icons.cached, size: 40,)
                            ),
                            Container(width: 20),
                            rLog4 == true ? Text('대여중', style: TextStyle(fontSize: 40, color: Colors.red)) : Text('대여가능', style: TextStyle(fontSize: 40, color: Colors. green))
                          ],
                        )

                    ),

                    Container(height: 15,),

                    Container(
                        width: 800,
                        color: Colors.white38,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('우산5', style: TextStyle(fontSize: 50)),Text('대여한 사람: $user5', style: TextStyle(fontSize: 20)),
                            Container(width: 260,),
                            IconButton(
                                onPressed: (){
                                  setState(() {user5 = umuser['um5'];});
                                  um['um5']=='1' ? setState(() {rLog5 = true;}) : setState(() {rLog5 = false;});},
                                icon: Icon(Icons.cached, size: 40,)
                            ),
                            Container(width: 20),
                            rLog5 == true ? Text('대여중', style: TextStyle(fontSize: 40, color: Colors.red)) : Text('대여가능', style: TextStyle(fontSize: 40, color: Colors. green))
                          ],
                        )

                    ),

                    Container(height: 15,),

                    Container(
                        width: 800,
                        color: Colors.white38,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('우산6', style: TextStyle(fontSize: 50)),Text('대여한 사람: $user6', style: TextStyle(fontSize: 20)),
                            Container(width: 260,),
                            IconButton(
                                onPressed: (){
                                  setState(() {user6 = umuser['um6'];});
                                  um['um6']=='1' ? setState(() {rLog6 = true;}) : setState(() {rLog6 = false;});},
                                icon: Icon(Icons.cached, size: 40,)
                            ),
                            Container(width: 20),
                            rLog6 == true ? Text('대여중', style: TextStyle(fontSize: 40, color: Colors.red)) : Text('대여가능', style: TextStyle(fontSize: 40, color: Colors. green))
                          ],
                        )

                    ),

                    Container(height: 15,),

                    Container(
                        width: 800,
                        color: Colors.white38,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('우산7', style: TextStyle(fontSize: 50)),Text('대여한 사람: $user7', style: TextStyle(fontSize: 20)),
                            Container(width: 260,),
                            IconButton(
                                onPressed: (){
                                  setState(() {user7 = umuser['um7'];});
                                  um['um7']=='1' ? setState(() {rLog7 = true;}) : setState(() {rLog7 = false;});},
                                icon: Icon(Icons.cached, size: 40,)
                            ),
                            Container(width: 20),
                            rLog7 == true ? Text('대여중', style: TextStyle(fontSize: 40, color: Colors.red)) : Text('대여가능', style: TextStyle(fontSize: 40, color: Colors. green))
                          ],
                        )

                    ),

                    Container(height: 15,),

                    Container(
                        width: 800,
                        color: Colors.white38,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('우산8', style: TextStyle(fontSize: 50)),Text('대여한 사람: $user8', style: TextStyle(fontSize: 20)),
                            Container(width: 260,),
                            IconButton(
                                onPressed: (){
                                  setState(() {user8 = umuser['um8'];});
                                  um['um8']=='1' ? setState(() {rLog8 = true;}) : setState(() {rLog8 = false;});},
                                icon: Icon(Icons.cached, size: 40,)
                            ),
                            Container(width: 20),
                            rLog8 == true ? Text('대여중', style: TextStyle(fontSize: 40, color: Colors.red)) : Text('대여가능', style: TextStyle(fontSize: 40, color: Colors. green))
                          ],
                        )

                    ),

                    Container(height: 15,),

                    Container(
                        width: 800,
                        color: Colors.white38,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('우산9', style: TextStyle(fontSize: 50)),Text('대여한 사람: $user9', style: TextStyle(fontSize: 20)),
                            Container(width: 260,),
                            IconButton(
                                onPressed: (){
                                  setState(() {user9 = umuser['um9'];});
                                  um['um9']=='1' ? setState(() {rLog9 = true;}) : setState(() {rLog9 = false;});},
                                icon: Icon(Icons.cached, size: 40,)
                            ),
                            Container(width: 20),
                            rLog9 == true ? Text('대여중', style: TextStyle(fontSize: 40, color: Colors.red)) : Text('대여가능', style: TextStyle(fontSize: 40, color: Colors. green))
                          ],
                        )

                    ),

                    Container(height: 15,),

                    Container(
                        width: 800,
                        color: Colors.white38,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('우산10', style: TextStyle(fontSize: 50)),Text('대여한 사람: $user10', style: TextStyle(fontSize: 20)),
                            Container(width: 260,),
                            IconButton(
                                onPressed: (){
                                  setState(() {user10 = umuser['um10'];});
                                  um['um10']=='1' ? setState(() {rLog10 = true;}) : setState(() {rLog10 = false;});},
                                icon: Icon(Icons.cached, size: 40,)
                            ),
                            Container(width: 20),
                            rLog10 == true ? Text('대여중', style: TextStyle(fontSize: 40, color: Colors.red)) : Text('대여가능', style: TextStyle(fontSize: 40, color: Colors. green))
                          ],
                        )

                    ),

                    Container(height: 15,),

                    Container(
                        width: 800,
                        color: Colors.white38,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('우산11', style: TextStyle(fontSize: 50)),Text('대여한 사람: $user11', style: TextStyle(fontSize: 20)),
                            Container(width: 260,),
                            IconButton(
                                onPressed: (){
                                  setState(() {user11 = umuser['um11'];});
                                  um['um11']=='1' ? setState(() {rLog11 = true;}) : setState(() {rLog11 = false;});},
                                icon: Icon(Icons.cached, size: 40,)
                            ),
                            Container(width: 20),
                            rLog11 == true ? Text('대여중', style: TextStyle(fontSize: 40, color: Colors.red)) : Text('대여가능', style: TextStyle(fontSize: 40, color: Colors. green))
                          ],
                        )

                    ),

                    Container(height: 15,),

                    Container(
                        width: 800,
                        color: Colors.white38,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('우산12', style: TextStyle(fontSize: 50)),Text('대여한 사람: $user12', style: TextStyle(fontSize: 20)),
                            Container(width: 260,),
                            IconButton(
                                onPressed: (){
                                  setState(() {user12 = umuser['um12'];});
                                  um['um12']=='1' ? setState(() {rLog12 = true;}) : setState(() {rLog12 = false;});},
                                icon: Icon(Icons.cached, size: 40,)
                            ),
                            Container(width: 20),
                            rLog12 == true ? Text('대여중', style: TextStyle(fontSize: 40, color: Colors.red)) : Text('대여가능', style: TextStyle(fontSize: 40, color: Colors. green))
                          ],
                        )

                    ),

                    Container(height: 15,),

                  ],
                ),

            ]
        ),
      ),
    );
  }
}