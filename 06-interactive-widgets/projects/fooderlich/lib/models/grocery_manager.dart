import 'package:flutter/material.dart';
import 'package:fooderlich/models/models.dart';

//this model will manage the grocery items
class GroceryManager extends ChangeNotifier{
  final _groceryItems = <GroceryItem> [];

  List<GroceryItem> get groceryItems => List.unmodifiable(_groceryItems);

  //some behaviors
void deleteItem(int index){
  _groceryItems.removeAt(index);
  notifyListeners();
}

void addItem(GroceryItem item){
  _groceryItems.add(item);
  notifyListeners();
}

void updateItem(GroceryItem item, int index){
  _groceryItems[index] = item;
  notifyListeners();
}

//toggle isComplete flag on and off
void completeItem(int index, bool change){
  final item = _groceryItems[index];
  _groceryItems[index] = item.copyWith(isComplete: change);
  notifyListeners();
}
}