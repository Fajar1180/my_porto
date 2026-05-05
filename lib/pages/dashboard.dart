import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int? _selectedIndex;

  final List<String> _pages = [
    'Counter',
    'Widget Bertingkat',
    'User Input Example',
    'Dynamic List Example',
    'Navigasi Sederhana',
    'Grid View',
    'Tentang Saya',
  ];

  final List<String> _routes = [
    '/counter',
    '/layered_widget',
    '/user_input',
    '/dynamic_list',
    '/simple_navigation',
    '/grid_view',
    '/about_me',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyPorto'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Cek hasil karyaku disini:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: _pages.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _selectedIndex == index ? Colors.blue : Colors.grey[300],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      onPressed: () {
                        setState(() {
                          _selectedIndex = index;
                        });
                        Navigator.pushNamed(context, _routes[index]);
                      },
                      child: Text(
                        _pages[index],
                        style: TextStyle(
                          color: _selectedIndex == index ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}