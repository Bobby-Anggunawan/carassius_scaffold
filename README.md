<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

TODO: Put a short description of the package here that helps potential users
know whether this package might be useful for them.

## Features

TODO: List what your package can do. Maybe include images, gifs, or videos.

* Kerangka dasar untuk semua aplikasi beserta setting route dan warna tema untuk darkmode di `CarassiusStartingApp`
* Berbagai kerangka yang mempermudah dalam membangun ui dan widget seperti `CarassiusAuthorityScaffold`, `CarassiusLoadingScaffold`, dan `CarassiusResponsiveScaffold`
* `CarassiusScaffold` yang merupakan kerangka dasar yang disarankan untuk membuat sebuah page yang dimasukkan ke dalam route `CarassiusStartingApp`. `CarassiusScaffold` sudah mengatur berbagai hal seperti animasi loading, perubahan tampilan saat orientasi device berubah, tampilan page yang berbeda untuk tiap role user menggunakan widget `CarassiusResponsiveScaffold`. `CarassiusResponsiveScaffold` juga dapat digunakan untuk hal seperti mapping halaman jika menggunakan widget seperti navigation tab atau navigation rail karena bisa menampilkan tampilan widget berbeda(kayak sub dari route).
* Mempermudah mengambil property aplikasi seperti **Warna Tema** yang di set, **Padding**, **BoxDecoration**, dan berbagai **TextStyle** yang digunakan tema yang di set(text button, teks normal, teks heading, dll) di dalam class `CarassiusGetter`
* `CarassiusToString` berisi berbagai fungsi untuk mengkonversi string atau data lain ke string dengan format tertentu
* `CarassiusToDateTime`
* `CarassiusNetwork` berisi fungsi untuk melakukan request hanya dengan 1 baris kode
* `CarassiusState` berisi berbagai fungsi dasar yang dipakai di banyak halaman misalnya seperti fungsi navigasi

### CarassiusLib

Class yang berisi fungsi fungsi penting tapi belum dapat dikategorikan. Fungsi di dalamnya antara lain:
* `colorFromHex()`

### CUI

daftar berbagai widget yang ada di dalam library ini
* `CUIDialogMaterialDateTimePicker()`: Menampilkan dialog material design yang mengambil input datetime(tangga dan jam)
* `CUICardText()`: Dialog standar terinspirasi dari material design

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder.

### Struktur Dasar Aplikasi
Untuk mulai menggunakan package ini, gunakan class `CarassiusStartingApp` di folder `main.dart` aplikasi yang dibuat. Contohnya
```dart
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return CarassiusStartingApp(
      routes: MyRoutes()
          .addRoutes("/", TestPage()),
      colorsLightTheme: MyThemeColor(isLightTheme: true).setColorScheme(ServiceTaskConfig.lightColorScheme),
      colorsDarkTheme: MyThemeColor(isLightTheme: false).setColorScheme(ServiceTaskConfig.darkColorScheme),
    );
  }
}
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.
