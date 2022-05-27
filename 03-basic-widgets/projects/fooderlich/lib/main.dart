import 'package:flutter/material.dart';

import 'theming/fooderlich_theme.dart';
import 'widgets/home.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final theme = FooderLichTheme.dark();
    return MaterialApp(
      title: 'FooderLich',
      theme: theme,
      home: const Home(),
    );
  }
}

