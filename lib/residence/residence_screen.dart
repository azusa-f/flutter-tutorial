import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

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
      //bottomNavigationBar: _bottomNavigationBar(context)
    );
  }
}

AppBar _buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: IconButton(
      icon: Icons.arrow_back_ios,
    ),
    // leading: SizedBox(
    //   width: 300,
    //   height: 10,
    //   child: ElevatedButton(
    //     onPressed: () {},
    //     child: const Text("おすすめ"),
    //     style: const ButtonStyle(),
    //   ),
    // ),
  );
}
