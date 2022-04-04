import 'package:flutter/material.dart';

class MerukariScreen extends StatelessWidget {
  MerukariScreen({Key? key}) : super(key: key);

  final List<PopulaArticleInfo> _dummyArticleData = [
    PopulaArticleInfo(
      imagePath:
          'https://tshop.r10s.jp/goodgoodsshop/cabinet/07493463/08669315/new.jpg?fitin=720%3A720',
      articleName: 'カメラ',
      articlePrice: '¥50000',
      articleInformation: '20人が探しています',
    ),
    PopulaArticleInfo(
      imagePath:
          'https://network.mobile.rakuten.co.jp/assets/img/product/iphone/iphone-13/pht-device-20.png?220309-01',
      articleName: 'iphone',
      articlePrice: '¥100000',
      articleInformation: '500人が探しています',
    ),
    PopulaArticleInfo(
      imagePath:
          'https://tshop.r10s.jp/goodgoodsshop/cabinet/07493463/08669315/new.jpg?fitin=720%3A720',
      articleName: 'カメラ',
      articlePrice: '¥50000',
      articleInformation: '20人が探しています',
    ),
    PopulaArticleInfo(
      imagePath:
          'https://network.mobile.rakuten.co.jp/assets/img/product/iphone/iphone-13/pht-device-20.png?220309-01',
      articleName: 'iphone',
      articlePrice: '¥100000',
      articleInformation: '500人が探しています',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildGuideSection(),
            _buildPopularArticlesSection(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.camera_alt),
        backgroundColor: Colors.red,
      ),
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }

  // appBarを構築
  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: const Text(
        "出品",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 25,
        ),
      ),
    );
  }

  // 出品ガイドセクションを構築
  Widget _buildGuideSection() {
    return Container(
      color: const Color.fromARGB(
        210,
        191,
        188,
        188,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Image.network('https://about.mercari.com/images/about-us-mv.webp'),
            SizedBox(
              height: 60,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    "出品へのショートカット",
                    style: TextStyle(
                      color: Color.fromARGB(255, 58, 52, 52),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildListingButton(Icons.photo_camera, "写真を撮る"),
                _buildListingButton(Icons.photo_library, "アルバム"),
                _buildListingButton(Icons.qr_code_2, "バーコード\n(本・コスメ)"),
                _buildListingButton(Icons.edit_note, "下書き一覧"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // 出品ボタンを構築
  Widget _buildListingButton(listingIcon, listingText) {
    return Container(
      height: 90,
      width: 80,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Column(
          children: [
            Icon(
              listingIcon,
              size: 40,
            ),
            Text(
              listingText,
              style: const TextStyle(fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }

  // 売れやすい物一覧セクションを構築
  Widget _buildPopularArticlesSection() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "売れやすい持ち物",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text("使わないモノを出品してみよう！"),
                  ],
                ),
              ),
              const Text(
                "すべて見る＞",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        for (var i = 0; i < _dummyArticleData.length; i++)
          _buildPopularArticle(_dummyArticleData[i]),
      ],
    );
  }

  // 売れやすいもの一覧を構築
  Widget _buildPopularArticle(articleData) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 70,
                height: 70,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    articleData.imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(articleData.articleName),
                    Text(articleData.articlePrice),
                    Row(
                      children: [
                        const Icon(
                          Icons.local_fire_department,
                          color: Colors.blue,
                          size: 20,
                        ),
                        Text(articleData.articleInformation),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {},
                child: const Text("出品する"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  //ボトムナビゲーションバーを構築
  BottomNavigationBar _buildBottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Stack(
            clipBehavior: Clip.none,
            children: [
              const Icon(Icons.home),
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
                      "5",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
          label: 'ホーム',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: "お知らせ",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.local_see),
          label: "出品",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.add_comment),
          label: "メッセージ",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: "マイページ",
        ),
      ],
      type: BottomNavigationBarType.fixed,
    );
  }
}

class PopulaArticleInfo {
  final String imagePath;
  final String articleName;
  final String articlePrice;
  final String articleInformation;

  PopulaArticleInfo({
    required this.imagePath,
    required this.articleName,
    required this.articlePrice,
    required this.articleInformation,
  });
}
