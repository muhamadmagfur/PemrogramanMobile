import 'package:flutter/material.dart';

import 'bottom/bottom_navi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LELANGJAMKU.ID',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BottomNavi(),
    );
  }
}

//muhamad Magfur 20190801021