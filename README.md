# statemanagement02

State Management Example 02

In State Management Example 01: https://github.com/lhcdims/statemanagement01

I created a flutter app that demonstrate how to use 'Multi-Threaded Timer' and 'setState', to refresh pages in which widgets' elements are attached to variables that are changed by EXTERNAL EVENTS (e.g. a Text widget changes its content when a message is received from the socket.io server)

In this example, I use Redux to re-write the same example.


## Demo

https://raw.githubusercontent.com/lhcdims/statemanagement01/master/images/FlutterStateManagement01.gif


## To create this App Manually

1. Download the zip file from github

2. Create a new Flutter App in Android Studio.

3. In file pubspec.yaml,include the following lines after dependencies:

  flutter_redux:
  
  threading:


4. 'Tools' -> 'Flutter' -> 'Flutter Packages Get'

5. Copy all the dart files from the zip file to your 'lib' directory

6. Run the app in emulator or device.
