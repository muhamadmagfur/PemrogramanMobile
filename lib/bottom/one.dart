import 'package:flutter/material.dart';
import 'package:uts/model/data_model.dart';
import 'package:uts/bottom/details_page.dart';
import 'package:uts/styles/app_colors.dart';

class One extends StatefulWidget {
  const One({Key? key}) : super(key: key);

  @override
  State<One> createState() => _OneState();
}

class _OneState extends State<One> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;

    buildTextEasy({
      required String name,
      required Color color,
      required double fontSize,
      required FontWeight fontWeight,
    }) {
      return Text(
        name,
        style: TextStyle(
          color: color,
          fontWeight: fontWeight,
          fontSize: fontSize,
        ),
      );
    }

    Widget buildDeatureandProductsText() {
      return Padding(
        padding: const EdgeInsets.only(top: 29, left: 55),
        child: SizedBox(
          height: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildTextEasy(
                color: Colors.black38,
                fontSize: 25,
                fontWeight: FontWeight.normal,
                name: "LELANG",
              ),
              buildTextEasy(
                color: ktextColor,
                fontSize: 36,
                fontWeight: FontWeight.bold,
                name: "JAMKU.ID",
              ),
            ],
          ),
        ),
      );
    }

    buildRotateText({required String name}) {
      return Padding(
        padding:
            const EdgeInsets.only(top: 22, left: 10, bottom: 15, right: 15),
        child: RotatedBox(
          quarterTurns: -1,
          child: Text(
            name,
            style: const TextStyle(
              fontSize: 18,
              color: ktextColor,
            ),
          ),
        ),
      );
    }

    buildColumnRotateText() {
      return Column(
        children: [
          buildRotateText(
            name: "Detail",
          ),
          buildRotateText(
            name: "Brand",
          ),
          buildRotateText(
            name: "Lelang",
          ),
          buildRotateText(
            name: "Keranjang",
          ),
        ],
      );
    }

    buildListImageView({required Size mq, required BuildContext context}) {
      return Expanded(
        child: SizedBox(
          height: mq.height * 0.5 + 20,
          width: mq.width,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: getData.length,
            itemBuilder: (_, index) {
              return InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => DetailPage(
                        title: getData[index].title,
                        price: getData[index].price,
                        desc: getData[index].desc,
                        image: getData[index].image,
                      ),
                    ),
                  );
                },
                child: SizedBox(
                  width: mq.width * 0.6,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: ListTile(
                      title: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 25, bottom: 20),
                            child: SizedBox(
                              height: mq.height * 0.2,
                              child: getData[index].image,
                            ),
                          ),
                          Text(
                            getData[index].title,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: ktextColor,
                              letterSpacing: 0.6,
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Row(
                            children: [
                              Text(
                                getData[index].price,
                                style: const TextStyle(
                                  color: ktextColor,
                                ),
                              ),
                              const Spacer(),
                            ],
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Row(
                            children: [
                              const Text(
                                "Tambah Favorit",
                                style: TextStyle(
                                  fontSize: 18,
                                  decoration: TextDecoration.underline,
                                  color: ktextColor,
                                  letterSpacing: 0.6,
                                ),
                              ),
                              const Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.favorite_border,
                                  color: ktextColor,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kamberColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildDeatureandProductsText(),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                buildColumnRotateText(),
                buildListImageView(
                  context: context,
                  mq: mq,
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
