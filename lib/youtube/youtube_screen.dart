import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class YoutubeScreen extends StatelessWidget {
  const YoutubeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _buildcategoryButtonSection(),
              _buildPopularMovieSection(),
            ],
          ),
        ),
        bottomNavigationBar: _bottomNavigationBar(context));
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

  Widget _buildcategoryButtonSection() {
    return Container(
      color: Colors.black,
      child: SizedBox(
        height: 210,
        child: GridView.count(
          childAspectRatio: 4,
          crossAxisCount: 2,
          children: <Widget>[
            _buildelevatedButton(
              Color.fromARGB(177, 155, 38, 29),
              Icons.local_fire_department,
              '急上昇',
            ),
            _buildelevatedButton(
              Color.fromARGB(255, 18, 190, 124),
              Icons.music_note,
              '音楽',
            ),
            _buildelevatedButton(
              Color.fromARGB(255, 196, 130, 152),
              Icons.sports_esports,
              'ゲーム',
            ),
            _buildelevatedButton(
              Color.fromARGB(255, 36, 52, 196),
              Icons.feed,
              'ニュース',
            ),
            _buildelevatedButton(
              Color.fromARGB(255, 26, 143, 75),
              Icons.school,
              '学び',
            ),
            _buildelevatedButton(
              Color.fromARGB(255, 225, 137, 65),
              Icons.live_tv,
              'ライブ',
            ),
            _buildelevatedButton(
              Color.fromARGB(255, 55, 141, 194),
              Icons.sports,
              'スポーツ',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildelevatedButton(Color color, IconData icon, String label) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(icon),
          label: Text(label),
          style: ElevatedButton.styleFrom(
            primary: color,
            alignment: Alignment.centerLeft,
          )),
    );
  }

  Widget _buildPopularMovieSection() {
    return Container(
      color: const Color.fromARGB(255, 39, 36, 36),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          children: _buildVideoItems(),
        ),
      ),
    );
  }

  List<Widget> _buildVideoItems() {
    List<String> videoImages = ['images/charch.JPG', 'images/charch.JPG'];
    List<String> videoTitles = [
      'test~~~~test~~~~test~~~~test~~~~test~~~',
      'pooh~~~~pooh~~~~pooh~~~~pooh~~~~pooh~~~'
    ];
    List<String> acountNames = ['donadona_pooh', 'kawaii_pooh'];
    List<String> acountImages = [
      'images/icons/pooh.png',
      'images/icons/pooh_2.jpeg'
    ];

    List<Widget> children = [];
    children.add(
      const Padding(
        padding: EdgeInsets.all(20.0),
        child: SizedBox(
          width: double.infinity,
          child: Text(
            "急上昇動画",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );

    for (var i = 0; i < videoImages.length; i++) {
      final container = Column(
        children: [
          Image.asset(
            videoImages[i],
            fit: BoxFit.contain,
          ),
          _buildVideoTitle(
            videoTitles[i],
            acountNames[i],
            acountImages[i],
          ),
        ],
      );
      children.add(container);
    }
    return children;
  }

  Row _buildVideoTitle(videoTitle, acountName, acountImage) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(acountImage),
              ),
            ),
          ),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                videoTitle,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              Text(
                acountName,
                style: const TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        )),
        Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),
        ),
      ],
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
          icon: Icon(Icons.add_circle_outline, size: 50),
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
