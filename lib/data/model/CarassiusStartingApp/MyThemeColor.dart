import 'package:flutter/material.dart';

/// untuk menyimpan semua warna yang dipakai di aplikasi ini
///
/// Semua warna disimpan dalam variable static
///
/// **Note:**
/// * Jika warna default kurang, user bisa memasukkan warna baru ke dalam map "[warnaLain]"
/// * User juga bisa langsung mengset ColorScheme sekaligus dengan fungsi "[setColorScheme]"
///
/// **Tips**
/// Anda bisa menggunakan tool ini untuk menggenerate warna yang bagus : https://m3.material.io/theme-builder#/custom
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

  /// apa theme theme color ini dibuat untuk theme light mode atau untuk theme dark mode
  bool isLightTheme = true;

  MyThemeColor({required this.isLightTheme}){}

  /// untuk menyimpan warna lain kalau warna default tidak cukup
  static Map<String, Color> warnaLain = {};

  /// cuma untuk simpan color scheme kalau panggil fungsi [setColorScheme]
  ColorScheme? storeColorScheme;

  /// ada 2 cara menggunakan class ini
  /// * pertama set warna satu persatu menggunakan fungsi setter lain seperti setPrimary().
  /// * kedua langsung set ColorScheme menggunakan fungsi ini.
  ///
  /// **NOTE**
  /// untuk menggenerate color scheme yang diperlukan fungsi ini, disarankan menggunakan tool berikut : https://m3.material.io/theme-builder#/custom
  MyThemeColor setColorScheme(ColorScheme color_scheme){
    storeColorScheme = color_scheme;

    _primary = color_scheme.primary;
    _secondary = color_scheme.secondary;
    _background = color_scheme.background;
    _error = color_scheme.error;
    _textPrimary = color_scheme.onPrimary;
    _textSecondary = color_scheme.onSecondary;
    _textBackground = color_scheme.onBackground;
    _textError = color_scheme.onError;

    return this;
  }

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
  /// warna latar belakang aplikasi.
  /// Biasanya warna abu abu. warna ini biasanya ada dibawah widget dengan warna putih seperti card
  MyThemeColor setBackground(Color color){
    _background = color;
    return this;
  }
  Color _textBackground = Colors.grey;
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

  Color _surface = Colors.white;
  /// warna saat ada diatar surface seperti card
  /// biasanya warna ini punya komposisi terbanyak di suatu aplikasi khususnya mobile bukan warna [primary]
  MyThemeColor setSurface(Color color){
    _surface = color;
    return this;
  }

  Color _textSurface = Colors.black;
  /// warna teks diatas warna [surface]
  MyThemeColor setTextSurface(Color color){
    _textSurface = color;
    return this;
  }

  ColorScheme colorScheme(){

    return ColorScheme(
      brightness: isLightTheme ? Brightness.light : Brightness.dark,
      primary: _primary,
      onPrimary: _textPrimary,
      primaryContainer: storeColorScheme?.primaryContainer,
      onPrimaryContainer: storeColorScheme?.onPrimaryContainer,
      secondary: _secondary,
      onSecondary: _textSecondary,
      secondaryContainer: storeColorScheme?.secondaryContainer,
      onSecondaryContainer: storeColorScheme?.onSecondaryContainer,
      tertiary: storeColorScheme?.tertiary,
      onTertiary: storeColorScheme?.onTertiary,
      tertiaryContainer: storeColorScheme?.tertiaryContainer,
      onTertiaryContainer: storeColorScheme?.onTertiaryContainer,
      error: _error,
      errorContainer: storeColorScheme?.errorContainer,
      onError: _textError,
      onErrorContainer: storeColorScheme?.onErrorContainer,
      background: _background,
      onBackground: _textBackground,
      surface: _surface,
      onSurface: _textSurface,
      surfaceVariant: storeColorScheme?.surfaceVariant,
      onSurfaceVariant: storeColorScheme?.onSurfaceVariant,
      outline: storeColorScheme?.outline,
      onInverseSurface: storeColorScheme?.onInverseSurface,
      inverseSurface: storeColorScheme?.inverseSurface,
      inversePrimary: storeColorScheme?.inversePrimary,
      shadow: storeColorScheme?.shadow,
      surfaceTint: storeColorScheme?.surfaceTint,
      outlineVariant: storeColorScheme?.outlineVariant,
      scrim: storeColorScheme?.scrim,
    );
  }
}