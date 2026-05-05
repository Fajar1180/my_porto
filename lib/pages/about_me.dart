import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Saya'),
        centerTitle: true, // Center title di AppBar
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Center( // Tambahkan Center widget
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Membuat column hanya sebesar kontennya
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/Fajar.png'),
              ),
              const SizedBox(height: 20),
              const Text(
                'NPM: 20241320059',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                'Nama: Muhammad Fajar Nurjaman',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: Text(
                  'Saya Muhammad Fajar Nurjaman, Mahasiswa Sistem Informasi semester 4 di Universitas Kebangsaan Republik Indonesia. Memiliki minat besar dalam menjembatani kebutuhan bisnis dengan solusi teknologi. Saat ini aktif mendalami manajemen basis data dan pengembangan sistem, serta terbuka untuk peluang kolaborasi dan proyek teknologi.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}