import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            _buildImageSection(),
            _buildTitleSection(),
            _buildButtonSection(context),
            _buildTextSection(),
          ],
        ),
      ),
    );
  }

  // BAGIAN GAMBAR (wajib ada untuk tampilan)
  Widget _buildImageSection() {
    return Image.asset(
      'images/gunung.jpeg',
      width: double.infinity,
      height: 250,
      fit: BoxFit.cover,
    );
  }

  Widget _buildTitleSection() {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );
  }

  Widget _buildButtonSection(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _buildButtonColumn(Color color, IconData icon, String label) {
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

  Widget _buildTextSection() {
    return Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Gunung Arjuno adalah gunung berapi kerucut tertinggi kedua di Jawa Timur '
        '(3.339 mdpl) setelah Semeru, yang terletak di perbatasan Kota Batu, '
        'Kab. Malang, dan Kab. Pasuruan. Terkenal dengan puncak Ogal-Agil, '
        'gunung ini dikelola Tahura Raden Soerjo dan memiliki jalur pendakian '
        'via Tretes, Lawang, Purwosari, dan Sumberbrantas.\n\n'
        'Mochammad Tanggaq Dirat Saputra || 244107060126',
        softWrap: true,
      ),
    );
  }
}