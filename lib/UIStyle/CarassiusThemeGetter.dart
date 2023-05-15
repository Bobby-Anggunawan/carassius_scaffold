import 'package:carassius_scaffold/CarassiusConfig.dart';
import 'package:carassius_scaffold/data/model/UIStyle/ThemeGetter/ThemeGetterPadding.dart';
import 'package:flutter/material.dart';
import '../data/model/UIStyle/ThemeGetter/ThemeGetterColors.dart';
import '../data/model/CarassiusStartingApp/MyThemeColor.dart';

/// memdapatkan data theme seperti color, dan default textstyle
class CarassiusThemeGetter{

  static TextTheme? _textTheme = null;
  static ColorScheme? _themeGetterColors = null;

  static ThemeGetterColors colorScheme(BuildContext context){

    if(_themeGetterColors == null){
      _themeGetterColors = Theme.of(context).colorScheme;
    }
    var ret = _themeGetterColors!;

    return ThemeGetterColors(
      ret.primary,
      ret.onPrimary,
      ret.secondary,
      ret.onSecondary,
      ret.background,
      ret.onBackground,
      ret.error,
      ret.onError,
      ret.surface,
      ret.onSurface,
      MyThemeColor.warnaLain
    );
  }

  /// Menyimpan berbagai text style dapertu body medium, title, button dl
  /// https://api.flutter.dev/flutter/material/TextTheme-class.html
  static TextTheme textTheme(BuildContext context){
    if(_textTheme == null){
      _textTheme = Theme.of(context).textTheme;
    }
    return _textTheme!;
  }

  static ThemeGetterPadding paddingTheme(){
    return ThemeGetterPadding(
        CarassiusConfig.paddingSmall,
        CarassiusConfig.paddingNormal,
        CarassiusConfig.paddingLarge
    );
  }
}