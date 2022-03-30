import 'dart:ui';

import 'package:flutter/foundation.dart';
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
            children: [],
          ),
        ),
        bottomNavigationBar: _bottomNavigationBar(context));
  }
}

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
              style: TextStyle(color: const Color.fromARGB(255, 45, 144, 174)),
            ),
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(161, 172, 175, 182),
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
              style: TextStyle(color: const Color.fromARGB(255, 45, 144, 174)),
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

BottomNavigationBar _bottomNavigationBar(BuildContext context) {
  return BottomNavigationBar(items: const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'ホーム',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.favorite_outline_outlined),
      label: 'お気に入り',
    )
  ]);
}
