import 'package:flutter/material.dart';
import 'package:native_android_navigation_checker/native_android_navigation_checker.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('3-Button Navigation Detector'),
        ),
        body: Center(
          child: FutureBuilder<bool>(
            future: BottomNavigationDetector.isThreeButtonNavigationEnabled(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                return Text(
                  snapshot.data == true
                      ? '3-button navigation is enabled'
                      : '3-button navigation is not enabled',
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
