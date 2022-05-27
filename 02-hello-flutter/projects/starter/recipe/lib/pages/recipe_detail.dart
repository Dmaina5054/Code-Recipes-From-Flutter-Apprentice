import 'package:flutter/material.dart';
import 'package:recipe/models/recipe.dart';


class RecipeDetail extends StatefulWidget {
  final Recipe recipe;
  const RecipeDetail({Key? key, required this.recipe}) : super(key: key);

  @override
  State<RecipeDetail> createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  //slider to control quantity
  //given a serving
  int _sliderVal=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      body: SafeArea(child: Column(
        children: [
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Image(image: AssetImage(widget.recipe.imageUrl),),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(widget.recipe.label, style: TextStyle(fontSize: 18),),
          //TODO: add expanded here
          Expanded(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemCount: widget.recipe.ingridients.length,
                itemBuilder: (BuildContext context, int index){
              final ingridient = widget.recipe.ingridients[index];
              //TODO: add ingridient quantity

              return Text('${ingridient.quantity * _sliderVal} ${ingridient.measure} ${ingridient.name}');
            }),
          )),

          //TODO: add a slider
          //will provide QUANTITY given serving
          Slider(
            min: 1,
              max: 10,
              divisions: 10,
              activeColor: Colors.green,
              inactiveColor: Colors.black,
              label: '${_sliderVal * widget.recipe.servings} servings',
              value: _sliderVal.toDouble(), onChanged: (newValue){
            setState((){
              _sliderVal = newValue.round();
            });
          })
        ],
      )),
    );
  }
}
