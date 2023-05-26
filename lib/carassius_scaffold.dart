library carassius_scaffold;

import 'package:flutter/material.dart';

import 'data/model/CarassiusStartingApp/MyRoutes.dart';
import 'data/model/CarassiusStartingApp/MyThemeColor.dart';


//TODO https://medium.com/flutter-community/how-to-create-publish-and-manage-flutter-packages-b4f2cd2c6b90

//model ada di data/model/StartingApp

/// kerangka dasar membuat aplikasi di framework ini. Bisa langsung diletakkan dalam fungsi [runApp()] di main.dart
///
/// **Contoh**
///
/// `main(){runApp(CarassiusStartingApp(<parameters>))}`
///
/// **Parameter**
/// * Routes: Diisi dengan halaman halaman yang ada di aplikasi ini. Merupakan implementasi dari https://docs.flutter.dev/cookbook/navigation/named-routes
/// * colorsLightTheme dan colorsDarkTheme: Diisi dengan warna yang ingin digunakan aplikasi. Umumnya warna yang ditampilkan adalah warna di colorsLightTheme dan sedangkan colorsDarkTheme hanya ditampilkan di perangkat mobile jika device di setting dark mode. Merupakan implementasi dari https://m3.material.io/styles/color/the-color-system/key-colors-tones
class CarassiusStartingApp extends StatelessWidget {
  const CarassiusStartingApp({Key? key, required this.routes, required this.colorsLightTheme, required this.colorsDarkTheme, this.textTheme: null}) : super(key: key);

  /// tempat mendaftarkan semua route dan page yang digunakan di aplikasi ini
  final MyRoutes routes;

  /// Warna kalau tidak di darkmode (theme default)
  /// tempat menyimpan warna-warna yang dipakai di aplikasi ini seperti warna primary, secondary, warna text, dll
  final MyThemeColor colorsLightTheme;

  /// Warna kalau sedang darkmode
  /// tempat menyimpan warna-warna yang dipakai di aplikasi ini seperti warna primary, secondary, warna text, dll
  final MyThemeColor colorsDarkTheme;

  /// text style yang dipakai text, dari body medium, title large, button, dll
  /// https://api.flutter.dev/flutter/material/TextTheme-class.html
  final TextTheme? textTheme;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      routes: routes.getRoutes(),
      theme: ThemeData(
          colorScheme: colorsLightTheme.colorScheme(),
          useMaterial3: true,
          textTheme: textTheme
      ),
      darkTheme: ThemeData(
          colorScheme: colorsDarkTheme.colorScheme(),
          useMaterial3: true,
          textTheme: textTheme
      ),
    );
  }
}


/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}
