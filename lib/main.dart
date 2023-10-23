import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    return MaterialApp(
      title: 'Flutter layout: Fergie Fatah Ardiansyah dan 2141720211',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/wisata-gunung-semeru.jpeg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            buildTitleSection(),
            buildButtonSection(color),
            buildTextSection(),
          ],
        ),
      ),
    );
  }

  Widget buildTitleSection() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: const Text(
                    'Kawah Putih Ciwidey',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Bandung, Jawa Barat, Indonesia',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );
  }

  Widget buildButtonSection(Color color) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );
  }

  Widget buildTextSection() {
    return Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Kawah Putih Ciwidey adalah sebuah tempat wisata alam yang menakjubkan di kawasan Ciwidey, Kabupaten'
        ' Bandung, Indonesia. Destinasi ini terkenal karena danau kawahnya yang memiliki air berwarna putih'
        ' kehijauan, yang dihasilkan oleh kandungan belerang dan mineral lainnya yang larut dalam air.' 
        ' Pemandangan kawah yang memukau, dengan latar belakang hutan tropis, membuatnya menjadi tempat yang' 
        ' sangat populer bagi para pengunjung yang mencari kedamaian dan keindahan alam. Selain menikmati' 
        ' kecantikan alamnya, wisatawan juga dapat menjelajahi area sekitarnya, berjalan-jalan di tepi danau,' 
        ' atau hanya duduk bersantai sambil menikmati udara segar dan pemandangan yang menenangkan di Kawah'
        ' Putih Ciwidey.',
        softWrap: true,
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}