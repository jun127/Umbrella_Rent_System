import 'package:flutter/material.dart';
import 'package:umbrella_rent_system/RentLog.dart';

import 'main.dart';
import 'Login.dart';
import 'Rent.dart';
import 'Return.dart';

class Adminpage extends StatefulWidget {
  @override
  _AdminpageState createState() => _AdminpageState();
}

class _AdminpageState extends State<Adminpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("양심우산 무인 대여시스템", ),
        leading: IconButton(icon: Icon(Icons.home), onPressed: () => {
        Navigator.push(
        context,MaterialPageRoute(builder: (context) => Login() ),
        )
        }
        ),
        backgroundColor: Colors.black,),
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
                            Icon(Icons.umbrella, size: 70, color: Colors.white,), Text('관리자 페이지', textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 70, color: Colors.white70),),
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
                          Navigator.push(
                            context,MaterialPageRoute(builder: (context) => RentLog() ),
                          );
                        },
                        child: Text('로그', style: TextStyle(fontSize: 40, ),),
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
            ]
        ),
      ),
    );
  }
}