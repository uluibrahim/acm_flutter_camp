import 'package:flutter/material.dart';
import 'package:flutter_learn/week3/food_card/food_card.dart';
import 'package:flutter_learn/week3/core/base/base_statefull.dart';
import 'package:flutter_learn/week3/food_card/model/food_model.dart';

abstract class FoodCardViewModel extends BaseStatefull<FoodCard> {
  // iş katmanlarının yazıldığı kısım.
  late final List<FoodModel> foodItemList;

  @override
  void initState() {
  
    super.initState();
    foodItemList=[
      FoodModel("Brocoli", imageConstants.brocoli, "10"),
      FoodModel("Red Pepper", imageConstants.pepper, "15"),
      FoodModel("Kale", imageConstants.kale, "10"),
      FoodModel("Straw Berry", imageConstants.strawBerry, "10"),
    ];
  }

}