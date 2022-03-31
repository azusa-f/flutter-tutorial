import 'package:flutter/material.dart';
import 'tutorial_1/animation_page.dart';
import 'youtube/youtube_screen.dart';
import 'residence/residence_screen.dart';
import 'merukari/merukari_screen.dart';

void main() => runApp(
      MainApp(),
    );

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IndexPage(),
    );
  }
}

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('目次'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                child: const Text("AnimationTutorial"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AnimationPage(),
                    ),
                  );
                }),
            ElevatedButton(
                child: const Text("YouTube"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const YoutubeScreen(),
                    ),
                  );
                }),
            ElevatedButton(
                child: const Text("賃貸アプリ"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ResidenceScreen(),
                    ),
                  );
                }),
            ElevatedButton(
                child: const Text("メルカリ"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MerikariScreen(),
                    ),
                  );
                }),
          ],
        )));
  }
}
