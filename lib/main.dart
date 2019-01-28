// This example tries to demonstrate how to maintain the state of widgets when
// variables are changed by External Event
// e.g. by a timer of another thread, or by socket.io
// This example uses Redux to maintain States of Multiple Pages

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:threading/threading.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'gv.dart';
import 'Page1.dart';
import 'Page2.dart';
import 'Page3.dart';
import 'ScreenVariables.dart';

void main() {  // Main Program
  var threadExternal = new Thread(
      funTimerExternal); // Create a new thread to simulate an External Event that changes a global variable defined in gv.dart
  threadExternal.start();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    sv.Init(); // Init Screen Variables

    runApp(new MyApp()); // Run MainApp
  });
}

void funTimerExternal() async {  // The following function simulates an External Event  e.g. a global variable is changed by socket.io and see how all widgets react with this global variable
  while (true) {
    await Thread.sleep(1000);
    gv.gintGlobal1 += 1;
    gv.gintGlobal2 = (gv.gintGlobal1 / 2).toInt();
    gv.storeState.dispatch(Actions.Increment);
  }
}

class MyApp extends StatefulWidget {  // Main App
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: gv.storeState,
      child: MaterialApp(
        debugShowCheckedModeBanner: false, // Disable Show Debug

        home: MainBody(),
      ),
    );
  }
}

class MainBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    switch (gv.gstrCurPage) {
      // Here Return Page According to gv.gstrCurPage
      case 'page1':
        gv.gintPage1Counter += 1;
        return StoreConnector<int, int>(
          builder: (BuildContext context, int intTemp) {
            return new ClsPage1(intTemp);
          }, converter: (Store<int> sintTemp) {
          return sintTemp.state;
        },);
        break;
      case 'page2':
        gv.gintPage2Counter += 1;
        return StoreConnector<int, int>(
          builder: (BuildContext context, int intTemp) {
            return new ClsPage2(intTemp);
          }, converter: (Store<int> sintTemp) {
          return sintTemp.state;
        },);
        break;
      default:
        return ClsPage3();
        break;
    }
  }
}
