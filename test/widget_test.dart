// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:my_porto/main.dart';

void main() {
  testWidgets('Dashboard shows all portfolio items', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('MyPorto'), findsOneWidget);
    expect(find.text('Cek hasil karyaku disini:'), findsOneWidget);
    expect(find.text('Counter'), findsOneWidget);
    expect(find.text('Widget Bertingkat'), findsOneWidget);
    expect(find.text('User Input Example'), findsOneWidget);
    expect(find.text('Dynamic List Example'), findsOneWidget);
    expect(find.text('Navigasi Sederhana'), findsOneWidget);
    expect(find.text('Grid View'), findsOneWidget);
    expect(find.text('Tentang Saya'), findsOneWidget);
  });

  testWidgets('Tapping Tentang Saya opens profile page', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.scrollUntilVisible(
      find.text('Tentang Saya'),
      200,
      scrollable: find.byType(Scrollable),
    );
    await tester.tap(find.text('Tentang Saya'));
    await tester.pumpAndSettle();

    expect(find.text('Tentang Saya'), findsWidgets);
    expect(find.text('NPM'), findsOneWidget);
    expect(find.text('Nama'), findsOneWidget);
    expect(find.text('Sekilas tentang saya......'), findsOneWidget);
  });
}
