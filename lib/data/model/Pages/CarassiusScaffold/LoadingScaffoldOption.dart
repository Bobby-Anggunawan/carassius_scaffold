import 'package:flutter/material.dart';

class LoadingScaffoldOption{
  /// kalau true, widget ini akan menampilkan halaman loading
  /// kalau true [main] akan ditampilkan
  bool isLoading;
  /// kalau true, widget ini akan menampilkan spinner diatas page(ditimpa)
  /// kalau false widget ini hanya akan menampilkan halaman loading dengan latar belakang kosong
  bool isLoadingOverlay;
  /// widget yang ditampilkan kalau loading.
  /// kalau nilainya null, akan menampilkan widget default CarassiusLoadingPage() yang berisi CircularProgressIndicator()
  Widget? loadingWidget;

  LoadingScaffoldOption({
    required this.isLoading,
    required this.isLoadingOverlay,
    required this.loadingWidget
  }){}

  /// builder kalo page ini tidak butuh menampilkan tampilan loading
  static LoadingScaffoldOption noLoading(){
    return LoadingScaffoldOption(isLoading: false, isLoadingOverlay: false, loadingWidget: null);
  }
}