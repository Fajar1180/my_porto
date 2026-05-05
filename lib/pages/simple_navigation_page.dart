import 'package:flutter/material.dart';

class SimpleNavigationPage extends StatelessWidget {
  const SimpleNavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Navigasi Sederhana')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Icon(Icons.alt_route, size: 84, color: Color(0xFF5B9DDA)),
              const SizedBox(height: 16),
              const Text(
                'Contoh navigasi sederhana',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 10),
              const Text(
                'Tekan tombol di bawah untuk membuka halaman detail lalu kembali lagi.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, height: 1.5),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) =>
                          const _NavigationDetailPage(),
                    ),
                  );
                },
                child: const Text('Buka Halaman Detail'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NavigationDetailPage extends StatelessWidget {
  const _NavigationDetailPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman Detail')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Text(
            'Ini adalah halaman tujuan untuk latihan navigasi sederhana.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, height: 1.5),
          ),
        ),
      ),
    );
  }
}
