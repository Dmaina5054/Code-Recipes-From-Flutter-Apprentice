import 'package:flutter/material.dart';
import 'package:fooderlich/models/models.dart';
import 'package:fooderlich/screens/grocery_screen.dart';
import 'package:provider/provider.dart';

import 'screens/explore_screen.dart';
import 'screens/recipes_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    ExploreScreen(),
    RecipesScreen(),
    GroceryScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    // TODO 9: Wrap inside a Consumer Widget

    //new implementation with provider package
    return Consumer<TabManager>(builder: (context, tabManager, child){
      return Scaffold(
        appBar: AppBar(
          title: Text('Fooderlich', style: Theme.of(context).textTheme.headline6,),
        ),
        body: pages[tabManager.selectedTab],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
          currentIndex: tabManager.selectedTab,
          onTap: (index){
            tabManager.goToTab(index);
          },
          items:<BottomNavigationBarItem> [
            const BottomNavigationBarItem(label:'Explore',icon: Icon(Icons.explore)),
            const BottomNavigationBarItem(label:'Recipes',icon: Icon(Icons.book)),
            const BottomNavigationBarItem(label:'To Buy',icon: Icon(Icons.list)),






          ],
        ),
      );

    });
  }
}
