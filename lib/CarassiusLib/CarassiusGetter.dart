import 'package:carassius_scaffold/data/model/CarassiusLib/CarassiusGetter/CarassiusPadding.dart';
import 'package:flutter/material.dart';

/// class ini berguna untuk mapping semua variable penting yang bisa diambil baik di dalam library ini sendiri atau dari library lain misalnya untuk mendapat warna theme saat ini
class CarassiusGetter{

  static TextTheme? _textTheme = null;
  static ColorScheme? _themeGetterColors = null;

  /// berguna untuk mendapat skema warna yang sedang digunakan aplikasi yang di set di widget [MaterialApp]
  static ColorScheme themeColor(BuildContext context){
    if(_themeGetterColors == null){
      _themeGetterColors = Theme.of(context).colorScheme;
    }

    return _themeGetterColors!;
  }

  /// berguna untuk mendapatkan jenis jenis teks style yang digunakan theme aplikasi ini yang di set di widget [MaterialApp].
  /// Misalnya test untuk button, text normal, teks untuk judul, dll
  static TextTheme themeText(BuildContext context){
    if(_textTheme == null){
      _textTheme = Theme.of(context).textTheme;
    }
    return _textTheme!;
  }

  static CarassiusPadding padding(BuildContext context){
    return CarassiusPadding();
  }

}