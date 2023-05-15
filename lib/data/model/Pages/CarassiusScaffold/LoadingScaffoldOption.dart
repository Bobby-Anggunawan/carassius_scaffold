import 'package:flutter/material.dart';

class LoadingScaffoldOption{
  /// kalau true, widget ini akan menampilkan halaman loading
  /// kalau true [main] akan ditampilkan
  late bool isLoading;
  /// kalau true, widget ini akan menampilkan spinner diatas page(ditimpa)
  /// kalau false widget ini hanya akan menampilkan halaman loading dengan latar belakang kosong
  late bool isLoadingOverlay;
  /// widget yang ditampilkan kalau loading.
  /// kalau nilainya null, akan menampilkan widget default CarassiusLoadingPage() yang berisi CircularProgressIndicator()
  late Widget? loadingWidget;
}