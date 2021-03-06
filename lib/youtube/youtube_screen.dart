import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tutorial/youtube/model/youtube_item.dart';
import 'package:tutorial/youtube/youtube_state_notifier.dart';

class YoutubeScreen extends ConsumerWidget {
  const YoutubeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(youtubeStateNotifier);

    return Scaffold(
      appBar: _buildAppBar(context),
      body: Column(
        children: [
          _buildBody(state.youtubeItems),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }

  // appBarを構築
  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      leading: IconButton(
        icon: Image.asset('images/YouTube.png'),
        onPressed: () {},
      ),
      title: const Text('YouTube'),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.cast),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications_none),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset('images/smile.png'),
        ),
      ],
    );
  }

  //ボディを構築
  Widget _buildBody(List<YoutubeItem> videoItems) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: videoItems.length,
        itemBuilder: (context, index) {
          return SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                index == 0 ? _buildCategorySection() : Container(),
                _buildVideoCapture(videoItems[index])
              ],
            ),
          );
        },
      ),
    );
  }

  // カテゴリーボタンセクションを構築
  Widget _buildCategorySection() {
    return Column(
      children: [
        Container(
          color: Colors.black,
          child: SizedBox(
            height: 210,
            child: GridView.count(
              childAspectRatio: 4,
              crossAxisCount: 2,
              children: <Widget>[
                _buildCategoryButton(
                  const Color.fromARGB(
                    177,
                    155,
                    38,
                    29,
                  ),
                  Icons.local_fire_department,
                  '急上昇',
                ),
                _buildCategoryButton(
                  const Color.fromARGB(
                    255,
                    18,
                    190,
                    124,
                  ),
                  Icons.music_note,
                  '音楽',
                ),
                _buildCategoryButton(
                  const Color.fromARGB(
                    255,
                    196,
                    130,
                    152,
                  ),
                  Icons.sports_esports,
                  'ゲーム',
                ),
                _buildCategoryButton(
                  const Color.fromARGB(
                    255,
                    36,
                    52,
                    196,
                  ),
                  Icons.feed,
                  'ニュース',
                ),
                _buildCategoryButton(
                  const Color.fromARGB(
                    255,
                    26,
                    143,
                    75,
                  ),
                  Icons.school,
                  '学び',
                ),
                _buildCategoryButton(
                  const Color.fromARGB(
                    255,
                    225,
                    137,
                    65,
                  ),
                  Icons.live_tv,
                  'ライブ',
                ),
                _buildCategoryButton(
                  const Color.fromARGB(
                    255,
                    55,
                    141,
                    194,
                  ),
                  Icons.sports,
                  'スポーツ',
                ),
              ],
            ),
          ),
        ),
        _buildPopularMain(),
      ],
    );
  }

  // カテゴリーボタンを構築
  Widget _buildCategoryButton(Color color, IconData icon, String label) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(icon),
        label: Text(label),
        style: ElevatedButton.styleFrom(
          primary: color,
          alignment: Alignment.centerLeft,
        ),
      ),
    );
  }

  Widget _buildPopularMain() {
    return Container(
      color: const Color.fromARGB(
        255,
        39,
        36,
        36,
      ),
      width: double.infinity,
      child: const Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          '急上昇動画',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildVideoCapture(YoutubeItem videoItems) {
    return Column(
      children: [
        Image.asset(
          videoItems.imagePath.toString(),
          fit: BoxFit.contain,
        ),
        _buildVideoTitle(
          videoItems.title.toString(),
          videoItems.subTitle.toString(),
          videoItems.iconPath.toString(),
        ),
      ],
    );
  }
}

//ビデオの名前などを構築
Widget _buildVideoTitle(
  String videoTitle,
  String acountName,
  String acountImage,
) {
  return Column(
    children: [
      Container(
        color: const Color.fromARGB(
          255,
          39,
          36,
          36,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(acountImage),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8),
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
              ),
            ),
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
        ),
      ),
    ],
  );
}

// ナビゲーションバーを構築
BottomNavigationBar _buildBottomNavigationBar(BuildContext context) {
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
