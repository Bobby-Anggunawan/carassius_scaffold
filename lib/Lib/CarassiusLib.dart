import 'package:flutter/material.dart';

/// berisi fungsi fungsi penting tapi gak tahu letak dimana. Jadi gabungkan saja di satu class ini
class CarassiusLib{

  /// membuat warna custom dari nilai hex.
  /// digunakan jika warna yang diinginkan tidak ada di dalam class Colors.
  /// Fungsi ini bisa digunakan di class MaterialApp untuk menset primary swatch
  ///
  /// **NOTE**
  ///
  /// parameter hex, diisi seperti "0xFF92001A". Jadi dimulai dari "0xFF" dilanjutkan angka dalam hexadecimal
  static MaterialColor colorFromHex(int hex) {

    var color = Color(hex);

    List strengths = <double>[.05];
    Map<int, Color> swatch = {};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    strengths.forEach((strength) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    });
    return MaterialColor(color.value, swatch);
  }
}