import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class ResidenceScreen extends StatelessWidget {
  ResidenceScreen({Key? key}) : super(key: key);

  final List<RoomInfo> _createDummyData = [
    RoomInfo(
      imagePath: 'https://content.es-ws.jp/cpool/5060/000/000/020/047/14-1.jpg',
      floorImagePath:
          'https://suumo.jp/article/oyakudachi/wp-content/uploads/2019/03/madorizu_sub04.jpg',
      buildingName: 'Rising place 川崎',
      residencePrice: '2,000万円',
      nearesetStation: 'test駅徒歩３分',
      roomInformation: 'test情報',
      buildingInformation: '西向き',
    ),
    RoomInfo(
      imagePath: 'https://content.es-ws.jp/cpool/5060/000/000/020/047/14-1.jpg',
      floorImagePath:
          'https://suumo.jp/article/oyakudachi/wp-content/uploads/2019/03/madorizu_sub04.jpg',
      buildingName: 'Rising place 川崎',
      residencePrice: '2,000万円',
      nearesetStation: 'test駅徒歩３分',
      roomInformation: 'test情報',
      buildingInformation: '西向き',
    ),
    RoomInfo(
      imagePath: 'https://content.es-ws.jp/cpool/5060/000/000/020/047/14-1.jpg',
      floorImagePath:
          'https://suumo.jp/article/oyakudachi/wp-content/uploads/2019/03/madorizu_sub04.jpg',
      buildingName: 'Rising place 川崎',
      residencePrice: '2,000万円',
      nearesetStation: 'test駅徒歩３分',
      roomInformation: 'test情報',
      buildingInformation: '西向き',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildEditConditionSection(),
            for (var i = 0; i < _createDummyData.length; i++)
              _buildRoomInformationSection(
                _createDummyData[i].imagePath,
                _createDummyData[i].floorImagePath,
                _createDummyData[i].buildingName,
                _createDummyData[i].residencePrice,
                _createDummyData[i].nearesetStation,
                _createDummyData[i].roomInformation,
                _createDummyData[i].buildingInformation,
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
        backgroundColor: residenceMainColor,
      ),
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }
}

// appBarを構築
AppBar _buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: IconButton(
      icon: const Icon(Icons.arrow_back_ios),
      onPressed: () {},
      color: residenceMainColor,
    ),
    title: Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: ElevatedButton(
            child: const Text(
              "おすすめ",
              style: TextStyle(
                color: residenceMainColor,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: residencebackGroundColor,
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
              style: TextStyle(
                color: residenceMainColor,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: residencebackGroundColor,
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
        color: residenceMainColor,
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
        border: Border.all(color: Colors.black26),
      ),
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
                  color: Color.fromARGB(
                    255,
                    219,
                    73,
                    73,
                  ),
                  fontSize: 17,
                ),
              ),
              Spacer(),
              Text(
                "編集",
                style: TextStyle(
                  color: residenceMainColor,
                ),
              ),
              Icon(
                Icons.edit,
                color: residenceMainColor,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(
                  66,
                  119,
                  114,
                  114,
                ),
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
                    Row(
                      children: const [
                        Icon(Icons.info),
                        Text("1R~4LDK / 10㎡以上 / 徒歩20分"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

// 部屋情報一覧セクションを構築
Widget _buildRoomInformationSection(
  imagePath,
  floorImagePath,
  buildingName,
  residencePrice,
  nearestStation,
  roomInformarion,
  buildingInformation,
) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black26),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: <Widget>[
              Expanded(
                child: Image.network(imagePath),
              ),
              Expanded(
                child: Image.network(floorImagePath),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              buildingName,
              style: const TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              residencePrice,
              style: const TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 20,
                color: Color.fromARGB(
                  255,
                  219,
                  73,
                  73,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              children: [
                Row(
                  children: [
                    const Icon(Icons.train),
                    Text(nearestStation),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.dashboard),
                    Text(roomInformarion),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.apartment),
                    Text(buildingInformation),
                  ],
                ),
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
                      color: residencebackGroundColor,
                    ),
                    label: const Text(
                      "興味なし",
                      style: TextStyle(
                        color: residencebackGroundColor,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      side: const BorderSide(
                        color: residencebackGroundColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_border,
                      color: residencebackGroundColor,
                    ),
                    label: const Text(
                      "お気に入り",
                      style: TextStyle(
                        color: residencebackGroundColor,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      side: const BorderSide(
                        color: residencebackGroundColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

// ボトムナビゲーションバーを構築
BottomNavigationBar _buildBottomNavigationBar(BuildContext context) {
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
                constraints: const BoxConstraints(minHeight: 15, minWidth: 15),
                child: const Center(
                  child: Text(
                    "1",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
        label: 'メッセージ',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.perm_identity),
        label: 'マイページ',
      ),
    ],
    selectedItemColor: residenceMainColor,
    unselectedItemColor: residencebackGroundColor,
    type: BottomNavigationBarType.fixed,
  );
}

const Color residenceMainColor = Color.fromARGB(
  255,
  45,
  144,
  174,
);

const Color residencebackGroundColor = Color.fromARGB(
  161,
  172,
  175,
  182,
);

class RoomInfo {
  final String imagePath;
  final String floorImagePath;
  final String buildingName;
  final String residencePrice;
  final String nearesetStation;
  final String roomInformation;
  final String buildingInformation;

  RoomInfo({
    required this.imagePath,
    required this.floorImagePath,
    required this.buildingName,
    required this.residencePrice,
    required this.nearesetStation,
    required this.roomInformation,
    required this.buildingInformation,
  });
}
