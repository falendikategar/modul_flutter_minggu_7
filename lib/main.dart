import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          Expanded(
            /* soal 1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Jawaban Soal 1
              children: [
                /* soal 2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0), // Jawaban Soal 2
                  child: const Text(
                    'Museum Angkut',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(color: Colors.grey[500]), // Jawaban Soal 2
                ),
              ],
            ),
          ),
          /* soal 3*/
          Icon(
            Icons.star, // Jawaban Soal 3
            color: Colors.red[500], // Jawaban Soal 3
          ),
          const Text('41'), // Jawaban Soal 3
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Column(
        children: [
          Text(
            'Museum Angkut merupakan museum transportasi '
            'dan tempat wisata modern yang terletak di '
            'Kota Batu, Jawa Timur, sekitar 20 km dari '
            'Kota Malang. Museum ini terletak di kawasan '
            'seluas 3,8 hektar di lereng Gunung Panderman '
            'dan memiliki lebih dari 300 koleksi jenis '
            'angkutan tradisional hingga modern.',
            softWrap: true,
          ),
          SizedBox(height: 50),
          Center(
            child: Text(
              'Nama: Falendika Tegar Pratama',
            ),
          ),
          Center(
            child: Text(
              'Nim: 2141720107',
            ),
          ),
        ],
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Falendika Tegar Pratama dan 2141720107',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/museum.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
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
