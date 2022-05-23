import 'package:flutter/material.dart';
import 'package:uts/styles/app_colors.dart';

class Two extends StatefulWidget {
  const Two({Key? key}) : super(key: key);

  @override
  State<Two> createState() => _TwoState();
}

class _TwoState extends State<Two> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //menghilangkan debug label
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: kamberColor,
            title: const Center(
              child: Text(
                "Info Lelang",
                style: TextStyle(color: ktextColor),
              ),
            ),
          ),
          body: ListView.builder(
            // itemcount adalah total panjang data yang ingin ditampilkan
            itemCount: 1,

            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: ListTile(
                  leading: Image.network(
                    "https://freepngimg.com/thumb/watch/1-2-watch-png-image.png",
                  ),
                  title: const Text(
                    "Jam Tangan mewah Branded Frederique Constant - Series GENEVE",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: const Text(
                    'Pelelangan Akan dimulai pada tanggal 07-Jan-2023 Pukul 13:00 PM, Harga bet Awal dimulai dari \$248. ',
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              );
            },
          )),
    );
  }
}
