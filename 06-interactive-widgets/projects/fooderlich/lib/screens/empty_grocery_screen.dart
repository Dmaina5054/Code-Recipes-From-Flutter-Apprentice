import 'package:flutter/material.dart';
import 'package:fooderlich/models/models.dart';
import 'package:provider/provider.dart';

class EmptyGroceryScreen extends StatelessWidget {
  const EmptyGroceryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO: replace and add layout widgets
    return Padding(padding: const EdgeInsets.all(30.0),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //TODO: ADD empty image
          Flexible(child: AspectRatio(
            aspectRatio: 1 / 1,
            child: Image.network('https://storage.googleapis.com/slack-286515.appspot.com/Chronizz/empty_list.png')
          )),
          //TODO: ADD empty screen title
          Text('No Groceries', style: TextStyle(fontSize: 21.0),),
          //TODO: ADD empty scren subtitle
          const SizedBox(height: 16.0,),
          const Text('Shopping for ingridients? \n' 'Tap the + button to write them down',textAlign: TextAlign.center,),
          //TODO: ADD browse recipes button
          MaterialButton(
            textColor: Colors.white,
            child: const Text('Browse Recipes'),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            color: Colors.green,
            onPressed: (){
              //go to recipes page
              Provider.of<TabManager>(context, listen: false).goToRecipes();
            },
          ),
        ],
      ),
    ),
    );
  }
}
