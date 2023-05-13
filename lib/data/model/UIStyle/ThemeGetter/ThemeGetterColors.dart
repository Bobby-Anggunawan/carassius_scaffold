import 'package:flutter/material.dart';

class ThemeGetterColors{
  Color primary = Colors.green[900]!;
  Color textPrimary = Colors.white;
  Color secondary = Colors.orange[900]!;
  Color textSecondary = Colors.white;
  Color background = Colors.grey[200]!;
  Color textBackground = Colors.black;
  Color error = Colors.red[900]!;
  Color textError = Colors.white;

  /// di set di class [MyThemeColor.dart]
  Map<String, Color> warnaLain = {};

  ThemeGetterColors(
      Color _primary,
      Color _textPrimary,
      Color _secondary,
      Color _textSecondary,
      Color _background,
      Color _textBackground,
      Color _error,
      Color _textError,
      Map<String, Color> _warnaLain
  ){
    primary = _primary;
    textPrimary = _textPrimary;
    secondary = _secondary;
    textSecondary = _textSecondary;
    background = _background;
    textBackground = _textBackground;
    error = _error;
    textError = _textError;
    warnaLain = _warnaLain;
  }
}