import 'package:flutter/material.dart';
import 'pages/dashboard.dart';
import 'pages/about_me.dart';
import 'pages/counter_page.dart';
import 'pages/layered_widget_page.dart';
import 'pages/user_input_page.dart';
import 'pages/dynamic_list_page.dart';
import 'pages/simple_navigation_page.dart';
import 'pages/grid_view_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyPorto',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Dashboard(),
      routes: {
        '/counter': (context) => const CounterPage(),
        '/layered_widget': (context) => const LayeredWidgetPage(),
        '/user_input': (context) => const UserInputPage(),
        '/dynamic_list': (context) => const DynamicListPage(),
        '/simple_navigation': (context) => const SimpleNavigationPage(),
        '/grid_view': (context) => const GridViewPage(),
        '/about_me': (context) => const AboutMe(),
      },
    );
  }
}
