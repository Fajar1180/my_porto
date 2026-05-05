import 'package:flutter/material.dart';

import 'about_me.dart';
import 'counter_page.dart';
import 'dynamic_list_page.dart';
import 'grid_view_page.dart';
import 'layered_widget_page.dart';
import 'simple_navigation_page.dart';
import 'user_input_page.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final Set<int> _visitedIndexes = <int>{};

  final List<_DashboardItem> _items = const <_DashboardItem>[
    _DashboardItem(title: 'Counter', icon: Icons.exposure_plus_1),
    _DashboardItem(title: 'Widget Bertingkat', icon: Icons.layers),
    _DashboardItem(title: 'User Input Example', icon: Icons.keyboard_alt),
    _DashboardItem(title: 'Dynamic List Example', icon: Icons.list_alt),
    _DashboardItem(title: 'Navigasi Sederhana', icon: Icons.alt_route),
    _DashboardItem(title: 'Grid View', icon: Icons.grid_view),
    _DashboardItem(title: 'Tentang Saya', icon: Icons.person),
  ];

  Future<void> _openItem(int index) async {
    setState(() {
      _visitedIndexes.add(index);
    });

    final String title = _items[index].title;
    switch (title) {
      case 'Counter':
        await Navigator.of(
          context,
        ).push(MaterialPageRoute<void>(builder: (_) => const CounterPage()));
        break;
      case 'Widget Bertingkat':
        await Navigator.of(context).push(
          MaterialPageRoute<void>(builder: (_) => const LayeredWidgetPage()),
        );
        break;
      case 'User Input Example':
        await Navigator.of(
          context,
        ).push(MaterialPageRoute<void>(builder: (_) => const UserInputPage()));
        break;
      case 'Dynamic List Example':
        await Navigator.of(context).push(
          MaterialPageRoute<void>(builder: (_) => const DynamicListPage()),
        );
        break;
      case 'Navigasi Sederhana':
        await Navigator.of(context).push(
          MaterialPageRoute<void>(builder: (_) => const SimpleNavigationPage()),
        );
        break;
      case 'Grid View':
        await Navigator.of(
          context,
        ).push(MaterialPageRoute<void>(builder: (_) => const GridViewPage()));
        break;
      case 'Tentang Saya':
        await Navigator.of(
          context,
        ).push(MaterialPageRoute<void>(builder: (_) => const AboutMe()));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MyPorto')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 28, 20, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 160),
              const Text(
                'Cek hasil karyaku disini:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF333333),
                ),
              ),
              const SizedBox(height: 20),
              ...List<Widget>.generate(_items.length, (int index) {
                final bool isVisited = _visitedIndexes.contains(index);
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => _openItem(index),
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: isVisited
                            ? const Color(0xFFB9C7FF)
                            : const Color(0xFFE6E6E6),
                        foregroundColor: const Color(0xFF333333),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(_items[index].icon, size: 20),
                          const SizedBox(width: 10),
                          Text(
                            _items[index].title,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}

class _DashboardItem {
  const _DashboardItem({required this.title, required this.icon});

  final String title;
  final IconData icon;
}
