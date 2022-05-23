import 'package:flutter/material.dart';
import 'package:uts/bottom/one.dart';
import 'package:uts/bottom/three.dart';
import 'package:uts/bottom/two.dart';
import 'package:uts/bottom/four.dart';
import 'package:uts/styles/app_colors.dart';

class BottomNavi extends StatefulWidget {
  const BottomNavi({Key? key}) : super(key: key);

  @override
  State<BottomNavi> createState() => _BottomNaviState();
}

class _BottomNaviState extends State<BottomNavi> {
  int currentIndex = 0;
  final List<Widget> body = [
    const One(),
    const Two(),
    const Three(),
    const Four(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kamberColor,
      body: body[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: ontap,
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color.fromARGB(255, 7, 95, 167),
            ),
            label: 'Home',
            activeIcon: Icon(Icons.home_outlined, color: Colors.blueAccent),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.info_outline,
              color: Colors.purple,
            ),
            label: 'Lelang',
            activeIcon: Icon(Icons.info_sharp, color: Colors.blueGrey),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_rounded,
              color: Colors.green,
            ),
            label: 'Akun',
            activeIcon: Icon(Icons.account_circle_outlined,
                color: Color.fromARGB(255, 6, 121, 10)),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.red,
            ),
            label: 'Keranjang',
            activeIcon: Icon(Icons.shopping_cart_checkout_outlined,
                color: Color.fromARGB(255, 254, 0, 110)),
          ),
        ],
      ),
    );
  }

  void ontap(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
