import 'package:flutter/material.dart';
import 'package:uts/styles/app_colors.dart';

class Four extends StatefulWidget {
  const Four({Key? key}) : super(key: key);

  @override
  _FourState createState() => _FourState();
}

class _FourState extends State<Four> {
  List picked = [false, false];

  int totalAmount = 0;

  pickToggle(index) {
    setState(() {
      picked[index] = !picked[index];
      getTotalAmount();
    });
  }

  getTotalAmount() {
    var hitung = 0;
    for (int i = 0; i < picked.length; i++) {
      if (picked[i]) {
        hitung = hitung + 1;
      }
      if (i == picked.length - 1) {
        setState(() {
          totalAmount = 248 * hitung;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(shrinkWrap: true, children: <Widget>[
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
          Stack(children: [
            Stack(children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
              ),
              Container(
                height: 250.0,
                width: double.infinity,
                color: const Color(0xFFFDD148),
              ),
              Positioned(
                bottom: 450.0,
                right: 100.0,
                child: Container(
                  height: 400.0,
                  width: 400.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200.0),
                    color: kamberColor,
                  ),
                ),
              ),
              Positioned(
                bottom: 500.0,
                left: 150.0,
                child: Container(
                    height: 300.0,
                    width: 300.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(150.0),
                        color: const Color(0xFFFEE16D).withOpacity(0.5))),
              ),
              const Positioned(
                  top: 75.0,
                  left: 15.0,
                  child: Text(
                    'Keranjang Lelang',
                    style: TextStyle(
                        color: ktextColor,
                        fontFamily: 'Montserrat',
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold),
                  )),
              Positioned(
                top: 150.0,
                child: Column(
                  children: <Widget>[
                    itemCard('Frederique Constant', 'Black and white', '248',
                        'assets/watch_four.png', true, 0),
                    itemCard('Koppel 45MM', 'Brown and white', '248',
                        'assets/watch_two.png', true, 1),
                    itemCard('Series Watch Apple A', 'full black', '248',
                        'assets/watch_six.png', false, 0),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 600.0, bottom: 15.0),
                  child: Container(
                      height: 50.0,
                      width: double.infinity,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text('Total: \$' + totalAmount.toString()),
                          const SizedBox(width: 10.0),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Center(
                                child: Text(
                                  'Bayar',
                                ),
                              ),
                            ),
                          )
                        ],
                      )))
            ])
          ])
        ])
      ]),
    );
  }

  Widget itemCard(itemName, color, price, imgPath, available, i) {
    return InkWell(
      onTap: () {
        if (available) {
          pickToggle(i);
        }
      },
      child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Material(
              borderRadius: BorderRadius.circular(10.0),
              elevation: 3.0,
              child: Container(
                  padding: const EdgeInsets.only(left: 15.0, right: 10.0),
                  width: MediaQuery.of(context).size.width - 20.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Row(
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                              height: 25.0,
                              width: 25.0,
                              decoration: BoxDecoration(
                                color: available
                                    ? Colors.grey.withOpacity(0.4)
                                    : Colors.red.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(12.5),
                              ),
                              child: Center(
                                  child: available
                                      ? Container(
                                          height: 12.0,
                                          width: 12.0,
                                          decoration: BoxDecoration(
                                              color: picked[i]
                                                  ? Colors.yellow
                                                  : Colors.grey
                                                      .withOpacity(0.4),
                                              borderRadius:
                                                  BorderRadius.circular(6.0)),
                                        )
                                      : Container()))
                        ],
                      ),
                      const SizedBox(width: 10.0),
                      Container(
                        height: 150.0,
                        width: 125.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(imgPath),
                                fit: BoxFit.contain)),
                      ),
                      const SizedBox(width: 4.0),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                itemName,
                                style: const TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0),
                              ),
                              const SizedBox(width: 7.0),
                              available
                                  ? picked[i]
                                      ? const Text(
                                          'x1',
                                          style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14.0,
                                              color: Colors.grey),
                                        )
                                      : Container()
                                  : Container()
                            ],
                          ),
                          const SizedBox(height: 7.0),
                          available
                              ? Text(
                                  'Color: ' + color,
                                  style: const TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.0,
                                      color: Colors.grey),
                                )
                              : OutlinedButton(
                                  onPressed: () {},
                                  child: const Center(
                                    child: Text('Terjual',
                                        style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12.0,
                                            color: Colors.red)),
                                  ),
                                ),
                          const SizedBox(height: 7.0),
                          available
                              ? Text(
                                  '\$' + price,
                                  style: const TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                      color: Color(0xFFFDD34A)),
                                )
                              : Container(),
                        ],
                      )
                    ],
                  )))),
    );
  }
}
