import 'package:flutter/cupertino.dart';

class Data {
  String title;
  String price;
  String desc;
  Image image;

  Data({
    required this.title,
    required this.desc,
    required this.image,
    required this.price,
  });
}

List<Data> getData = [
  Data(
    title: "Koppel 45MM",
    desc:
        "Henning Koppel menunjukkan bakat awal untuk seni, membuatnya berlatih menggambar dan aquarelle sejak dini.",
    price: "Mulai dari \$248",
    image: Image.asset(
      "assets/watch_two.png",
      fit: BoxFit.cover,
    ),
  ),
  Data(
    title: "Citizen Eco",
    desc:
        "Tali kulit asli dan kain 20 milimeter hitam & coklat yang dapat disesuaikan cocok hingga lingkar pergelangan tangan 8 inci. Dial hitam dengan angka Arab lengkap; Jendela tanggal pada pukul 3; waktu militer 24 jam",
    price: "Mulai dari \$350",
    image: Image.asset(
      "assets/watch_one.png",
      fit: BoxFit.cover,
    ),
  ),
  Data(
    title: "MIDO - Men's Watch",
    desc:
        "Silver-tone dial dengan tampilan tanggal dan hari, pita baja tahan karat yang disikat dan dipoles, serta gerakan kronometer Otomatis Swiss.",
    price: "Mulai dari \$552",
    image: Image.asset(
      "assets/watch_three.png",
      fit: BoxFit.cover,
    ),
  ),
  Data(
    title: "Frederique Constant",
    desc:
        "Frederique Constant mengkhususkan diri dalam jam tangan mewah dengan harga yang masuk akal. Warna hitam putih segmen yang paling tepat digambarkan dengan 'Kemewahan yang Dapat Diakses'.",
    price: "Mulai dari \$248",
    image: Image.asset(
      "assets/watch_four.png",
      fit: BoxFit.cover,
    ),
  ),
  Data(
    title: "Chronograph Watch Baselworld Speake-Marin J12 Chanel",
    desc:
        "Jam tangan adalah alat ukur dasar yang digunakan secara teratur yang seharusnya dibawa atau dikenakan oleh seseorang. Ini dirancang untuk tetap beroperasi meskipun ada gerakan yang disebabkan oleh aktivitas orang tersebut. Sebuah ticker dimaksudkan untuk dikenakan di sekitar kampus, dihubungkan dengan tali jam atau semacam gelang alternatif. Sebuah ticker dimaksudkan untuk disimpan di kantong yang sangat banyak. Studi tentang aktivitas dianggap sebagai seni.",
    price: "Mulai dari \$440",
    image: Image.asset(
      "assets/watch_five.png",
      fit: BoxFit.cover,
    ),
  ),
  Data(
    title: "Series Watch Apple Accessory",
    desc:
        "Kami bertanggung jawab atas jejak lingkungan dari produk kami sepanjang siklus hidupnya. Kami berkomitmen untuk satu hari mendapatkan 100% bahan daur ulang dan terbarukan di semua produk dan kemasan kami. Apple Watch dirancang dengan daftar fitur untuk mengurangi dampak lingkungan.",
    price: "Mulai dari \$300",
    image: Image.asset(
      "assets/watch_six.png",
      fit: BoxFit.cover,
    ),
  ),
  Data(
    title: "Sophie Martin Melwyna White",
    desc:
        "Berikan sentuhan yang berbeda untuk penampilan Anda melalui jam tangan berdesain all white dari Sophie Martin ini. Desain all white akan memberikan kesan misterius yang mungkin membuat orang lain menjadi penasaran. Di samping itu, desain ini juga dapat memunculkan sisi boyish Anda.",
    price: "Mulai dari \$320",
    image: Image.asset(
      "assets/watch_seven.png",
      fit: BoxFit.cover,
    ),
  ),
];
