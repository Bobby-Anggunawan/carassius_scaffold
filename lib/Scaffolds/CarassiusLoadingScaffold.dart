import 'package:flutter/material.dart';

class CarassiusLoadingScaffold extends StatelessWidget {
  const CarassiusLoadingScaffold({Key? key, required this.isLoading, required this.main}) : super(key: key);

  /// kalau true, widget ini akan menampilkan halaman loading
  /// kalau true [main] akan ditampilkan
  final bool isLoading;

  /// widget yang ditampilkan kalau **[isLoading] == false**
  final Widget main;

  @override
  Widget build(BuildContext context) {
    if(isLoading){
      // TODO: Buat halaman loading yang lebih bagus
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    return main;
  }
}
