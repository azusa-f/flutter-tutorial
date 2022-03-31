import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MerikariScreen extends StatelessWidget {
  const MerikariScreen({Key? key}) : super(key: key);

  get child => null;

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
      )),
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }

  Widget _buildPopularArticlesSection() {
    return Container();
  }

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

  Widget _buildGuideSection() {
    return Container(
      color: const Color.fromARGB(
        210,
        191,
        188,
        188,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.network(
                'https://about.mercari.com/images/about-us-mv.webp'),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
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
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildListingButton(Icons.photo_camera, "写真を撮る"),
                _buildListingButton(Icons.photo_library, "アルバム"),
                _buildListingButton(Icons.qr_code_2, "バーコード\n(本・コスメ)"),
                _buildListingButton(Icons.edit_note, "下書き一覧"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListingButton(ListingIcon, ListingText) {
    return SizedBox(
      height: 90,
      width: 80,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Icon(
                ListingIcon,
                size: 40,
              ),
              Text(
                ListingText,
                style: TextStyle(fontSize: 10),
              ),
            ],
          ),
        ),
      ),
    );
  }

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
