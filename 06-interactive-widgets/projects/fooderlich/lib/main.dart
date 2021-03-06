import 'package:flutter/material.dart';
import 'package:fooderlich/models/grocery_manager.dart';
import 'package:fooderlich/models/models.dart';
import 'package:provider/provider.dart';

import 'fooderlich_theme.dart';
import 'home.dart';

void main() {
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.light();
    return MaterialApp(
      theme: theme,
      title: 'Fooderlich',
      home: MultiProvider(providers: [
        ChangeNotifierProvider(create: (context) => TabManager()), //listen to tab index changes and notify listeners
        ChangeNotifierProvider(create: (context)=> GroceryManager())
      ],
        child: Home(),
      )
    );
  }
}
