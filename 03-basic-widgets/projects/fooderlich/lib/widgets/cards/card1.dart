import 'package:flutter/material.dart';
import 'package:fooderlich/theming/fooderlich_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);

  final String category = 'Editor\'s Choice';
  final String title = 'The art of Dough';
  final String description = 'Learn to bake like a Pro';
  final String chef = 'Chef Dan';

  @override
  Widget build(BuildContext context) {
    return Center(
      //TODO: Decorate card container
      child: Container(
        //TODO: Add a stack of text,
        child: Stack(
          children: [
            Text(category, style: FooderLichTheme.darkTextTheme.bodyText1,),
            Positioned(
                child:  Text(title,style: FooderLichTheme.darkTextTheme.headline5,),
              top: 20,
            ),
            Positioned(
                child:  Text(description, style: FooderLichTheme.darkTextTheme.bodyText1,),
              bottom: 30,
              right: 0,
            ),
Positioned(
    child:  Text(chef,style: FooderLichTheme.darkTextTheme.bodyText1,),
  bottom: 10,
  right: 0,

),

          ],
        ),
        padding: const EdgeInsets.all(16),
        constraints: BoxConstraints.expand(
          width: MediaQuery.of(context).size.width * 0.90 ,
          height: MediaQuery.of(context).size.height * 0.90,
        ),
        decoration:const BoxDecoration(
          image:  DecorationImage(
              image: AssetImage('assets/mag1.png'),
              fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0))
        ),


      ),
    );
  }
}
