import 'package:flutter/material.dart';
import 'package:fooderlich/screens/empty_grocery_screen.dart';
import 'package:provider/provider.dart';

import '../models/grocery_manager.dart';
import '../models/models.dart';
import 'grocery_item_screen.dart';

//consume our two providers
//in this widget
class GroceryScreen extends StatelessWidget {
  const GroceryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO: replace with EmptyGrocery screen
//TODO: ADD a scaffold widget

  return Scaffold(
    floatingActionButton: FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: (){
        //TODO:present GroceryItemScreen
        final manager = Provider.of<GroceryManager>(context, listen: false);
        Navigator.push(context, MaterialPageRoute(builder: (context)=>GroceryItemScreen(
          onCreate: (item){
            manager.addItem(item);
            Navigator.pop(context);
          },
          onUpdate: (item){},


        )));
      },
    ),
    body: buildGroceryScreen(),
  );
  }

Widget buildGroceryScreen(){
    //listen for changes in GroceryManager
    return Consumer<GroceryManager>(builder: (context, manager,child){
      if(manager.groceryItems.isNotEmpty){
        //TODO: ADD groceryListScreen
        return Container();

      }
      else{
        return const EmptyGroceryScreen();
      }
    });
}
}
