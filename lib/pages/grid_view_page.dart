import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_GridItem> items = <_GridItem>[
      _GridItem('Flutter', Icons.flutter_dash),
      _GridItem('UI', Icons.palette),
      _GridItem('Form', Icons.assignment),
      _GridItem('List', Icons.list_alt),
      _GridItem('Route', Icons.alt_route),
      _GridItem('Design', Icons.design_services),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Grid View')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: GridView.builder(
          itemCount: items.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 14,
            mainAxisSpacing: 14,
          ),
          itemBuilder: (BuildContext context, int index) {
            final _GridItem item = items[index];
            return Container(
              decoration: BoxDecoration(
                color: const Color(0xFFF4F7FB),
                borderRadius: BorderRadius.circular(22),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(item.icon, size: 54, color: const Color(0xFF5B9DDA)),
                  const SizedBox(height: 12),
                  Text(
                    item.title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class _GridItem {
  _GridItem(this.title, this.icon);

  final String title;
  final IconData icon;
}
