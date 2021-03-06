import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tutorial/residence/mvvm/model/residence_item.dart';
import 'package:tutorial/residence/residence_state_notifier.dart';

class ResidenceScreen extends ConsumerWidget {
  const ResidenceScreen({Key? key}) : super(key: key);

  static const Color residenceMainColor = Color.fromARGB(
    255,
    45,
    144,
    174,
  );

  static const Color residenceBackgroundColor = Color.fromARGB(
    161,
    172,
    175,
    182,
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(residenceStateNotifier);

    return Scaffold(
      appBar: _buildAppBar(context),
      body: Column(
        children: [
          _buildBody(state.residenceItems),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: residenceMainColor,
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
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
            padding: const EdgeInsets.all(15),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: residenceBackgroundColor,
                shape: const StadiumBorder(),
              ),
              onPressed: () {},
              child: const Text(
                'おすすめ',
                style: TextStyle(
                  color: residenceMainColor,
                ),
              ),
            ),
          ),
          Badge(
            badgeContent: const Text(
              '1',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: residenceBackgroundColor,
                shape: const StadiumBorder(),
              ),
              onPressed: () {},
              child: const Text(
                'リフォーム',
                style: TextStyle(
                  color: residenceMainColor,
                ),
              ),
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

  Widget _buildBody(List<ResidenceItem> residenceItems) {
    return Expanded(
      child: ListView.builder(
        itemCount: residenceItems.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                index == 0 ? _buildEditConditionSection() : Container(),
                _buildRoomInformationSection(residenceItems[index])
              ],
            ),
          );
        },
      ),
    );
  }

  // 条件設定セクションを構築
  Widget _buildEditConditionSection() {
    return Padding(
      padding: const EdgeInsets.all(13),
      child: Column(
        children: [
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  'カウルのおすすめ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ),
              Text(
                '新着３件',
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
                '編集',
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
            padding: const EdgeInsets.all(8),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Icon(Icons.train),
                      Text('東京駅・品川駅・川崎駅・横浜駅・目黒駅'),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(Icons.paid),
                      Text('下限なし〜2,000万円'),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(Icons.info),
                      Text('1R~4LDK / 10㎡以上 / 徒歩20分'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 部屋情報一覧セクションを構築
  Widget _buildRoomInformationSection(ResidenceItem residenceData) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: <Widget>[
              Expanded(
                child: Image.network(
                  residenceData.imagePath.toString(),
                ),
              ),
              Expanded(
                child: Image.network(
                  residenceData.floorImagePath.toString(),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              residenceData.buildingName.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              residenceData.residencePrice.toString(),
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
                    Text(
                      residenceData.nearesetStation.toString(),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.dashboard),
                    Text(
                      residenceData.roomInformation.toString(),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.apartment),
                    Text(
                      residenceData.buildingInformation.toString(),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 150,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delete,
                      color: residenceBackgroundColor,
                    ),
                    label: const Text(
                      '興味なし',
                      style: TextStyle(
                        color: residenceBackgroundColor,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      side: const BorderSide(
                        color: residenceBackgroundColor,
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
                      color: residenceBackgroundColor,
                    ),
                    label: const Text(
                      'お気に入り',
                      style: TextStyle(
                        color: residenceBackgroundColor,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      side: const BorderSide(
                        color: residenceBackgroundColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
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
                  constraints:
                      const BoxConstraints(minHeight: 15, minWidth: 15),
                  child: const Center(
                    child: Text(
                      '1',
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
      unselectedItemColor: residenceBackgroundColor,
      type: BottomNavigationBarType.fixed,
    );
  }
}
