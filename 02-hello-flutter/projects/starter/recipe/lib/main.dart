import 'package:flutter/material.dart';
import 'package:recipe/pages/recipe_detail.dart';

import 'models/recipe.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'Recipe Calculator',
      theme: theme.copyWith(
          colorScheme: theme.colorScheme
              .copyWith(primary: Colors.green, secondary: Colors.black)),
      home: const MyHomePage(title: 'My Recipse Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: Recipe.samples.length,
          itemBuilder: (BuildContext context, int index) {
            //TODO: Add Gesture detector
            return GestureDetector(
              child: buildReciperCard(Recipe.samples[index]),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return RecipeDetail(recipe: Recipe.samples[index]);

                }));
              },
            );
          },
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  //build card here
  Widget buildReciperCard(Recipe recipe) {
    return Card(
      elevation: 2.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
              children: [
      Image(image: AssetImage(recipe.imageUrl)),
      const SizedBox(height: 14.0,),
      Text(recipe.label, style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        fontFamily: 'Palatino'
      ),),
    ]),
        ));
  }
}
