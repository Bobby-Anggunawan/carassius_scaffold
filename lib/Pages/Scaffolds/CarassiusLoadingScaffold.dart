import 'package:flutter/material.dart';

import '../../UIStyle/CarassiusBoxDecoration.dart';

class CarassiusLoadingScaffold extends StatelessWidget {
  const CarassiusLoadingScaffold({Key? key, required this.isLoading, required this.isLoadingOverlay, required this.main, this.loadingWidget = null}) : super(key: key);

  /// kalau true, widget ini akan menampilkan halaman loading
  /// kalau true [main] akan ditampilkan
  final bool isLoading;

  /// kalau true, widget ini akan menampilkan spinner diatas page(ditimpa)
  /// kalau false widget ini hanya akan menampilkan halaman loading
  final bool isLoadingOverlay;

  /// widget yang ditampilkan kalau **[isLoading] == false**
  final Widget main;

  /// widget yang ditampilkan kalau loading.
  /// kalau nilainya null, akan menampilkan widget CircularProgressIndicator()
  final Widget? loadingWidget;

  @override
  Widget build(BuildContext context) {
    if(isLoading && isLoadingOverlay){
      return Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: CarassiusDecoration.transparanBlack(),
          ),
          loadingWidget ?? CircularProgressIndicator(),
          main
        ],
      );
    }
    else if(isLoading && !isLoadingOverlay){
      return Center(
        child: loadingWidget ?? CircularProgressIndicator(),
      );
    }

    return main;
  }
}
