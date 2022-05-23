import 'package:flutter/material.dart';
import 'package:uts/styles/app_colors.dart';

TextStyle _textStyle1 = const TextStyle(
  fontSize: 21,
  letterSpacing: 1.2,
  color: ktextColor,
  fontWeight: FontWeight.bold,
);

TextStyle _textStyle2 = const TextStyle(
  fontSize: 18,
  letterSpacing: 1.2,
  color: ktextColor,
  fontWeight: FontWeight.bold,
);
TextStyle _textStyle3 = const TextStyle(
  fontSize: 18,
  letterSpacing: 0.9,
  color: ktextColor,
);

class DetailPage extends StatefulWidget {
  final String title;
  final String price;
  final String desc;
  final Image image;

  const DetailPage({
    Key? key,
    required this.title,
    required this.price,
    required this.desc,
    required this.image,
  }) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;

    buildCancelicon(BuildContext context) {
      return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.clear),
      );
    }

    buildImage(Size mq) {
      return Padding(
        padding: const EdgeInsets.only(top: 30, bottom: 10),
        child: Center(
          child: SizedBox(
            height: mq.height * 0.3,
            child: widget.image,
          ),
        ),
      );
    }

    buildTitletext() {
      return Text(
        widget.title,
        style: _textStyle1,
      );
    }

    buildPrice() {
      return Text(
        widget.price,
        style: _textStyle2,
      );
    }

    buildDesc() {
      return Text(
        widget.desc,
        style: _textStyle3,
      );
    }

    buildCartandLikes() {
      return Row(
        children: [
          const Text(
            "Tambah Favorit",
            style: TextStyle(
              fontSize: 18,
              letterSpacing: 0.6,
              color: ktextColor,
            ),
          ),
          const Spacer(),
          CircleAvatar(
            backgroundColor: ktextColor,
            radius: 30,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_border,
                color: kamberColor,
                size: 30,
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildCancelicon(context),
                buildImage(mq),
                buildTitletext(),
                const SizedBox(
                  height: 12.0,
                ),
                buildPrice(),
                const SizedBox(
                  height: 15.0,
                ),
                buildDesc(),
                SizedBox(
                  height: mq.height * 0.05,
                ),
                buildCartandLikes(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
