import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(selectWidget(window.defaultRouteName));

Widget selectWidget(String routeName) {
  switch (routeName) {
    case 'r1':
      return MyFlutterView();
      break;
    case 'r2':
      return MyFlutterFragment();
      break;
    default:
      return MaterialApp(
        home: Scaffold(
          body: Center(
            child: Text('路由不存在!'),
          ),
        ),
      );
      break;
  }
}

class MyFlutterView extends StatefulWidget {
  @override
  _MyFlutterViewState createState() => _MyFlutterViewState();
}

class _MyFlutterViewState extends State<MyFlutterView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
            color: Color(0xffff0000),
            child: Center(
              child: Text('My Flutter View',
              style: TextStyle(
                color: Color(0xffffffff),
              ),),
            ),
          ),
        ),
      ),
    );
  }
}


class MyFlutterFragment extends StatefulWidget {
  @override
  _MyFlutterFragmentState createState() => _MyFlutterFragmentState();
}

class _MyFlutterFragmentState extends State<MyFlutterFragment> {

  num _count=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
            color: Color(0xff0000ff),
            child: Center(
              child: Text('My Flutter Fragment $_count',
                style: TextStyle(
                  color: Color(0xffffffff),
                ),),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
          setState(() {
            _count++;
          });
        },),
      ),
    );
  }
}

