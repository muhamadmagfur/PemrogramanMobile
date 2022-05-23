// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uts/styles/app_colors.dart';

class Three extends StatelessWidget {
  const Three({Key? key, String? title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kamberColor,
      body: Column(
        children: [
          Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                Image(
                  height: MediaQuery.of(context).size.height / 3,
                  fit: BoxFit.cover,
                  image: const NetworkImage(
                      'https://i.pinimg.com/564x/12/46/04/124604e3dbfba8da3fa63e223a16e281.jpg'),
                ),
                Positioned(
                    bottom: -50.0,
                    child: CircleAvatar(
                      radius: 80,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 75,
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/564x/45/20/b2/4520b2e21e4df7adf7de1766af40bec7.jpg'),
                      ),
                    ))
              ]),
          SizedBox(
            height: 45,
          ),
          ListTile(
            title: Center(child: Text('Muhamad Magfur')),
            subtitle: Center(child: Text('NIM 20190801021 ')),
          ),
          ListTile(
            title: Text('About'),
            subtitle: Text(
                'Tugas sesi UTS pemrograman mobile membuat ui/ux aplikasi pelelangan'),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            title: Text('Education'),
            subtitle: Text('Universitas Esa Unggul '),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            title: Text('Social'),
            subtitle: Row(
              children: [
                Expanded(
                  child: IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.github,
                      ),
                      onPressed: () {}),
                ),
                Expanded(
                  child: IconButton(
                      icon: FaIcon(FontAwesomeIcons.linkedin),
                      onPressed: () {}),
                ),
                Expanded(
                  child: IconButton(
                      icon: FaIcon(FontAwesomeIcons.facebook),
                      onPressed: () {}),
                ),
                Expanded(
                  child: IconButton(
                      icon: FaIcon(FontAwesomeIcons.instagram),
                      onPressed: () {}),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            title: Text('Keluar akun'),
            subtitle: Row(children: [
              Expanded(
                  child: IconButton(
                icon: FaIcon(FontAwesomeIcons.arrowAltCircleRight),
                onPressed: () {},
              ))
            ]),
          ),
        ],
      ),
    );
  }
}
