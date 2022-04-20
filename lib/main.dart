import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tutorial/todo_app/todo_screen.dart';

import 'async/async.dart';
import 'merukari/merukari_screen.dart';
import 'mvvm/qiita_top_screen.dart';
import 'residence/residence_screen.dart';
import 'tutorial_1/animation_page.dart';
import 'youtube/youtube_screen.dart';

void main() => runApp(const ProviderScope(child: MainApp()));

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: IndexPage(),
    );
  }
}

class IndexPage extends StatelessWidget {
  const IndexPage({Key? key}) : super(key: key);

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
              child: const Text('AnimationTutorial'),
              onPressed: () {
                Navigator.push<Widget>(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AnimationPage(),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: const Text('YouTube'),
              onPressed: () {
                Navigator.push<void>(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const YoutubeScreen(),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: const Text('賃貸アプリ'),
              onPressed: () {
                Navigator.push<Widget>(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ResidenceScreen(),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: const Text('メルカリ'),
              onPressed: () {
                Navigator.push<Widget>(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MerukariScreen(),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: const Text('Async'),
              onPressed: () {
                Navigator.push<Widget>(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AsyncScreen(),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: const Text('qiita'),
              onPressed: () {
                Navigator.push<Widget>(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const QiitaTopScreen(),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: const Text('ToDo'),
              onPressed: () {
                Navigator.push<Widget>(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TodoScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
