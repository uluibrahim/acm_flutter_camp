import 'package:flutter/material.dart';
import 'package:flutter_learn/week3/core/theme/ITheme.dart';

class LightTheme extends ITheme {
  static LightTheme? _instance;
  static LightTheme get instance {
    if (_instance != null) {
      return _instance!;
    }
    _instance = LightTheme._init();
    return instance;
  }

  LightTheme._init();
  final ThemeData _ligthTheme = ThemeData.light();

  @override
  ThemeData get data => ThemeData(
        appBarTheme:
            _ligthTheme.appBarTheme.copyWith(backgroundColor: Colors.white,textTheme:  _ligthTheme.textTheme.apply(bodyColor:colors.lynch),),
        colorScheme: _ligthTheme.colorScheme.copyWith(
          primary: Colors.white,
          onPrimary: colors.lynch,
          onSecondary: colors.catSkillWhite,
        ),
        accentColor: Colors.green,
        textTheme:  _ligthTheme.textTheme.apply(bodyColor:colors.lynch),
      );
}
