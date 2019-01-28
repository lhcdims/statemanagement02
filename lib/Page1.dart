// This program display Page 1

// Import Flutter Darts
import 'package:flutter/material.dart';
import 'dart:convert';

// Import Self Darts
import 'BottomBar.dart';
import 'gv.dart';
import 'ScreenVariables.dart';

// Home Page
class ClsPage1 extends StatelessWidget {
  final intCounter1;

  ClsPage1(this.intCounter1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(
          title: Text(
            'Page 1 - Dynamic Page',
            style: TextStyle(fontSize: sv.dblDefaultFontSize),
          ),
        ),
        preferredSize: new Size.fromHeight(sv.dblTopHeight),
      ),
      body: Center(
        child: Container(
          color: Colors.greenAccent,
          height: sv.dblBodyHeight,
          width: sv.dblScreenWidth,
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Page 1 Init Counter: ' + gv.gintPage1Counter.toString(),
                    style: TextStyle(fontSize: sv.dblDefaultFontSize),
                    textAlign: TextAlign.left,
                  ),
                  Text(' '),
                  Text(
                    'Global Counter 1: ' + gv.gintGlobal1.toString(),
                    style: TextStyle(fontSize: sv.dblDefaultFontSize),
                    textAlign: TextAlign.left,
                  ),
                  Text(' '),
                  Text(
                    'Global Counter 2: ' + gv.gintGlobal2.toString(),
                    style: TextStyle(fontSize: sv.dblDefaultFontSize),
                    textAlign: TextAlign.left,
                  ),
                ]),
          ),
        ),
      ),
      bottomNavigationBar: ClsBottom(),
    );
  }
}
