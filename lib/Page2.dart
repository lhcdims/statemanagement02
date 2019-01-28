// This program display Page 2

// Import Flutter Darts
import 'package:flutter/material.dart';

// Import Self Darts
import 'BottomBar.dart';
import 'gv.dart';
import 'ScreenVariables.dart';

// Home Page
class ClsPage2 extends StatelessWidget {
  final int intState;

  ClsPage2(this.intState);

  final ctlUserID = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(
          title: Text(
            'Page 2 Dynamic Page with a Text Field',
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
                    'Page 2 Init Counter: ' + gv.gintPage2Counter.toString(),
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
                  Row(
                    children: <Widget>[
                      Text('     '),
                      Expanded(
                        child: TextFormField(
                          controller: gv.gctlPage2Text,
                          keyboardType: TextInputType.text,
                          autofocus: false,
                          decoration: InputDecoration(
                            hintText: ('A Text Field'),
                            contentPadding:
                            EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(32.0)),
                          ),
                        ),
                      ),
                      Text('     '),
                    ],
                  ),
                ]),
          ),
        ),
      ),
      bottomNavigationBar: ClsBottom(),
    );
  }
}
