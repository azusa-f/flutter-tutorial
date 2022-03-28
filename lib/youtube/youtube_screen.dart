import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class YoutubeScreen extends StatelessWidget {
  const YoutubeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Column(
        children: [
          _categoryButtonSection(),
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      leading: IconButton(
        icon: Image.asset('images/YouTube.png'),
        onPressed: () {},
      ),
      title: const Text('YouTube'),
      actions: <Widget>[
        IconButton(onPressed: () {}, icon: const Icon(Icons.cast)),
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.notifications_none)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        IconButton(onPressed: () {}, icon: Image.asset('images/smile.png')),
      ],
    );
  }

  Widget _categoryButtonSection() {
    return SizedBox(
      height: 200,
      child: GridView.count(
        childAspectRatio: 4,
        crossAxisCount: 2,
        children: <Widget>[
          _elevatedButton(Color.fromARGB(177, 155, 38, 29),
              Icons.local_fire_department, '急上昇'),
          _elevatedButton(
              Color.fromARGB(255, 18, 190, 124), Icons.music_note, '音楽'),
          _elevatedButton(
              Color.fromARGB(255, 196, 130, 152), Icons.sports_esports, 'ゲーム'),
          _elevatedButton(Color.fromARGB(255, 36, 52, 196), Icons.feed, 'ニュース'),
          _elevatedButton(Color.fromARGB(255, 26, 143, 75), Icons.school, '学び'),
          _elevatedButton(
              Color.fromARGB(255, 225, 137, 65), Icons.live_tv, 'ライブ'),
          _elevatedButton(
              Color.fromARGB(255, 55, 141, 194), Icons.sports, 'スポーツ'),
        ],
      ),
    );
  }

  Widget _elevatedButton(Color color, IconData icon, String label) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
        top: 10,
        // bottom: 10,
      ),
      child: ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(icon),
          label: Text(label),
          style: ElevatedButton.styleFrom(
            primary: color,
            // minimumSize: const Size(160, 50),
          )),
    );
  }

  BottomNavigationBar _bottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'ホーム',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.find_in_page),
          label: '検索',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_circle_outline, size: 60),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.playlist_play),
          label: '登録チャンネル',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.video_library),
          label: 'ライブラリ',
        ),
      ],
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      unselectedFontSize: 10,
      selectedFontSize: 10,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
    );
  }
}
