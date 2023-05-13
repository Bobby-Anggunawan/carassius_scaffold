import 'package:flutter/material.dart';

/// untuk menyimpan semua warna yang dipakai di aplikasi ini
///
/// Semua warna disimpan dalam variable static
///
/// **Note:** Jika warna default kurang, user bisa memasukkan warna baru ke dalam map "[warnaLain]"
///
/// Daftar Warna Tersedia:
/// * primary
/// * secondary
/// * background
/// * error
/// * textPrimary
/// * textSecondary
/// * textBackground
/// * textError
class MyThemeColor{
  /// untuk menyimpan warna lain kalau warna default tidak cukup
  static Map<String, Color> warnaLain = {};

  Color _primary = Colors.green[900]!;
  /// warna utama aplikasi (bukan warna background)
  /// dipakai di appbar, tombol, dll
  MyThemeColor setPrimary(Color color){
    _primary = color;
    return this;
  }

  Color _textPrimary = Colors.white;
  /// warna teks diatas warna [primary]
  MyThemeColor setTextPrimary(Color color){
    _textPrimary = color;
    return this;
  }

  Color _secondary = Colors.orange[900]!;
  /// warna lain dari aplikasi.
  /// Biasa aku pakai untuk di dalam warna [primary]. Misalnya di appbar dengan warna [primary] merah kutambah tombol dengan warna [secondary] biru
  MyThemeColor setSecondary(Color color){
    _secondary = color;
    return this;
  }

  Color _textSecondary = Colors.white;
  /// warna teks diatas warna [secondary]
  MyThemeColor setTextSecondary(Color color){
    _textSecondary = color;
    return this;
  }


  Color _background = Colors.grey[200]!;
  /// warna saat tidak ada warna lain.
  /// Biasanya warna putih. Warna ini punya komposisi terbanyak di suatu aplikasi bukan [primary]
  MyThemeColor setBackground(Color color){
    _background = color;
    return this;
  }
  Color _textBackground = Colors.black;
  /// warna teks diatas warna [background]
  MyThemeColor setTextBackground(Color color){
    _textBackground = color;
    return this;
  }

  Color _error = Colors.red[900]!;
  /// warna saat ada yang salah
  /// biasanya warna merah
  MyThemeColor setError(Color color){
    _error = color;
    return this;
  }

  Color _textError = Colors.white;
  /// warna teks diatas warna [error]
  MyThemeColor setTextError(Color color){
    _textError = color;
    return this;
  }

  ColorScheme colorScheme(BuildContext context){

    var ret = Theme.of(context).colorScheme;
    return ColorScheme(
        brightness: ret.brightness,
        primary: _primary,
        onPrimary: _textPrimary,
        secondary: _secondary,
        onSecondary: _textSecondary,
        error: _error,
        onError: _textError,
        background: _background,
        onBackground: _textBackground,
        surface: ret.surface,
        onSurface: ret.onSurface
    );
  }
}