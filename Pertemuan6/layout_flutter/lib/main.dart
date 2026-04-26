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
            _buildImageHeader(),
            _buildTitleSection(),
            _buildButtonSection(context),
            _buildTextSection(),
            _buildRecommendationSection(),
          ],
        ),
      ),
    );
  }

  // BAGIAN 1: Header Gambar
  static Widget _buildImageHeader() {
    return Image.asset(
      'images/gunung.jpeg',
      width: double.infinity,
      height: 250,
      fit: BoxFit.cover,
    );
  }

  // BAGIAN 2: Title Section
  static Widget _buildTitleSection() {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                const Text(
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

  // BAGIAN 3: Button Section
  static Widget _buildButtonSection(BuildContext context) {
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

  static Widget _buildButtonColumn(Color color, IconData icon, String label) {
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

  // BAGIAN 4: Text Section
  static Widget _buildTextSection() {
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

  // BAGIAN 5: Recommendation Section
  static Widget _buildRecommendationSection() {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Rekomendasi Gunung Lain',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildRecommendationImage('images/gunung_bromo.jpeg'),
              const SizedBox(width: 8),
              _buildRecommendationImage('images/gunung_raung.jpeg'),
              const SizedBox(width: 8),
              _buildRecommendationImage('images/gunung_rinjani.jpeg'),
            ],
          ),
        ],
      ),
    );
  }

  static Widget _buildRecommendationImage(String path) {
    return Expanded(
      child: Container(
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(path, fit: BoxFit.cover),
        ),
      ),
    );
  }
}