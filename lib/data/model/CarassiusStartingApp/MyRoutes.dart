import 'package:carassius_scaffold/Pages/CarassiusScaffold.dart';
import 'package:flutter/material.dart';


/// Dipakai di [StartingApp] untuk menyimpan semua route dan page di aplikasi ini
///
/// Cara menggunakan:
/// * Gunakan fungsi [addRoutes] untuk memasukkan route
/// * Setelah route dimasukkan, [StartingApp] akan membaca route yang tersimpan di variable [routes]
class MyRoutes{

  /// tempat menyimpan semua route di aplikasi ini.
  /// variable ini dibutuhkan di class [StartingApp]
  Map<String, WidgetBuilder> routes = {};

  /// digunakan untuk mendaftarkan route baru
  ///
  /// Daftar parameter:
  /// * parameter [route] adalah nama dari route yang ingin dimasukkan, misalnya "/" atau "/home". Jadi nama wajib dimulai dari "/" atau akan mereturn error
  /// * parameter [page] harus menggunakan widget [CarassiusScaffold]. Widget ini sudah lengkap terdiri dari scaffold, ada fungsi menampilkan loading, dll
  MyRoutes addRoutes(String route, CarassiusScaffold page){
    if(route[0] == "/"){
      routes[route] = (context) => page;
      return this;
    }
    else{
      throw AssertionError('Parameter route harus dimulai dari karakter "/"');
    }
  }
}