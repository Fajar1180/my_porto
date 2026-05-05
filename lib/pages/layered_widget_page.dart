import 'package:flutter/material.dart';

class LayeredWidgetPage extends StatelessWidget {
  const LayeredWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Widget Bertingkat')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                width: 260,
                height: 260,
                decoration: BoxDecoration(
                  color: const Color(0xFFEAF2FF),
                  borderRadius: BorderRadius.circular(28),
                ),
              ),
              Positioned(
                top: 48,
                child: Container(
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                    color: const Color(0xFF5B9DDA),
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              ),
              Positioned(
                bottom: 42,
                right: 28,
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: const Color(0xFF1B5E9E),
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              ),
              Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: const <BoxShadow>[
                    BoxShadow(
                      color: Color(0x15000000),
                      blurRadius: 20,
                      offset: Offset(0, 10),
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.layers,
                  size: 56,
                  color: Color(0xFF5B9DDA),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
