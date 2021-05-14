import 'package:flutter/material.dart';
import 'package:flutter_learn/week3/core/theme/light_theme.dart';
import 'package:flutter_learn/week3/food_card/model/food_model.dart';


class FoodCardWidget extends StatelessWidget {
  final FoodModel model;

  const FoodCardWidget({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Theme.of(context).colorScheme.onSecondary,
        child: ListTile(
          leading: Image.asset(model.image),
          title: Text(model.title),
          trailing: Text(
            "€${model.money}",
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      );
  }
}