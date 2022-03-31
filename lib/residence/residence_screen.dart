import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class ResidenceScreen extends StatelessWidget {
  const ResidenceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _buildEditConditionSection(),
              for (var i = 0; i < 10; i++) _buildRoomInformationSection(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
          backgroundColor: const Color.fromARGB(255, 45, 144, 174),
        ),
        bottomNavigationBar: _bottomNavigationBar(context));
  }
}

// appBarを構築
AppBar _buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: IconButton(
      icon: const Icon(Icons.arrow_back_ios),
      onPressed: () {},
      color: const Color.fromARGB(255, 45, 144, 174),
    ),
    title: Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: ElevatedButton(
            child: const Text(
              "おすすめ",
              style: TextStyle(color: Color.fromARGB(255, 45, 144, 174)),
            ),
            style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(161, 172, 175, 182),
              shape: const StadiumBorder(),
            ),
            onPressed: () {},
          ),
        ),
        Badge(
          badgeContent: const Text(
            '1',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          child: ElevatedButton(
            child: const Text(
              "リフォーム",
              style: TextStyle(color: Color.fromARGB(255, 45, 144, 174)),
            ),
            style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(161, 172, 175, 182),
              shape: const StadiumBorder(),
            ),
            onPressed: () {},
          ),
        ),
      ],
    ),
    actions: <Widget>[
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.add_circle),
        color: const Color.fromARGB(255, 45, 144, 174),
      ),
    ],
  );
}

// 条件設定セクションを構築
Widget _buildEditConditionSection() {
  return Padding(
    padding: const EdgeInsets.all(13.0),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black26)),
      child: Column(
        children: [
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "カウルのおすすめ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ),
              Text(
                "新着３件",
                style: TextStyle(
                  color: Color.fromARGB(255, 219, 73, 73),
                  fontSize: 17,
                ),
              ),
              SizedBox(
                width: 80,
              ),
              Text(
                "編集",
                style: TextStyle(
                  color: Color.fromARGB(255, 45, 144, 174),
                ),
              ),
              Icon(
                Icons.edit,
                color: Color.fromARGB(255, 45, 144, 174),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(66, 119, 114, 114),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.train),
                          Text("東京駅・品川駅・川崎駅・横浜駅・目黒駅"),
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(Icons.paid),
                          Text("下限なし〜2,000万円"),
                        ],
                      ),
                      Row(children: const [
                        Icon(Icons.info),
                        Text("1R~4LDK / 10㎡以上 / 徒歩20分"),
                      ]),
                    ],
                  ),
                )),
          ),
        ],
      ),
    ),
  );
}

// 部屋情報一覧セクションを構築
Widget _buildRoomInformationSection() {
  return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black26)),
        child: Column(children: [
          Row(
            children: <Widget>[
              Expanded(
                  child: Image.network(
                      "https://content.es-ws.jp/cpool/5060/000/000/020/047/14-1.jpg")),
              Expanded(
                  child: Image.network(
                      "https://suumo.jp/article/oyakudachi/wp-content/uploads/2019/03/madorizu_sub04.jpg"))
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: const [
                Text(
                  "Rising place 川崎",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: const [
                Text(
                  "2,000万円",
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                      color: Color.fromARGB(255, 219, 73, 73)),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              children: [
                Row(children: const [
                  Icon(Icons.train),
                  Text("test~~~~~~~~~~~~~~"),
                ]),
                Row(children: const [
                  Icon(Icons.dashboard),
                  Text("testtesttesttesttesttesttesttest"),
                ]),
                Row(children: const [
                  Icon(Icons.apartment),
                  Text("testtesttesttesttesttesttesttest"),
                ]),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 150,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delete,
                      color: Color.fromARGB(213, 90, 86, 86),
                    ),
                    label: const Text(
                      "興味なし",
                      style: TextStyle(color: Color.fromARGB(213, 90, 86, 86)),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        side: const BorderSide(
                          color: Color.fromARGB(66, 119, 114, 114),
                        )),
                  ),
                ),
                SizedBox(
                  width: 150,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_border,
                      color: Color.fromARGB(213, 90, 86, 86),
                    ),
                    label: const Text(
                      "お気に入り",
                      style: TextStyle(color: Color.fromARGB(213, 90, 86, 86)),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        side: const BorderSide(
                          color: Color.fromARGB(66, 119, 114, 114),
                        )),
                  ),
                ),
              ],
            ),
          )
        ]),
      ));
}

// ボトムナビゲーションバーを構築
BottomNavigationBar _bottomNavigationBar(BuildContext context) {
  return BottomNavigationBar(
    items: [
      const BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'ホーム',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.favorite_outline_outlined),
        label: 'お気に入り',
      ),
      BottomNavigationBarItem(
        icon: Stack(
          clipBehavior: Clip.none,
          children: [
            const Icon(Icons.chat),
            Positioned(
                right: -5,
                top: -4,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  constraints:
                      const BoxConstraints(minHeight: 15, minWidth: 15),
                  child: const Center(
                    child: Text(
                      "1",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ))
          ],
        ),
        label: 'メッセージ',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.perm_identity),
        label: 'マイページ',
      ),
    ],
    selectedItemColor: const Color.fromARGB(255, 45, 144, 174),
    unselectedItemColor: const Color.fromARGB(161, 172, 175, 182),
    type: BottomNavigationBarType.fixed,
  );
}
