import 'package:flutter/material.dart';

import 'week2/post_json_place_holder/post_json_place_holder.dart';
import 'package:flutter_learn/week3/food_card/food_card.dart';
import 'package:flutter_learn/week3/core/theme/light_theme.dart';
import 'package:flutter_learn/week3/food_dash_board/food_dash_board_view.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: LightTheme.instance.data,
      home: FoodDashboardView(),
    );
  }
}
