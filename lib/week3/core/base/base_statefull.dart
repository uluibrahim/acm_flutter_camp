import 'package:flutter/material.dart';
import 'package:flutter_learn/week3/core/images/image_constants.dart';
import 'package:flutter_learn/week3/core/localizate/application_strings.dart';

abstract class BaseStatefull<T extends StatefulWidget> extends State<T> {
  ApplicationStrings applicationStrings = ApplicationStrings.instance;
  TextTheme get textTheme => Theme.of(context).textTheme;
  ThemeData get theme => Theme.of(context);
  ColorScheme get colorScheme => Theme.of(context).colorScheme;

  ImageConstants get imageConstants => ImageConstants.instance;

  EdgeInsets insetsAll = EdgeInsets.all(30);

  double dynamichHeight(value) => MediaQuery.of(context).size.height * value;
}
