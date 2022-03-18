import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'tutorial_1/animation.dart';
//import './charch.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: PageChanege());
  }
}

class PageChanege extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('☆☆')),
        body: Center(
            child: ElevatedButton(
                child: const Text("flutter_tutorial"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AnimationPage()),
                  );
                })));
  }
}
