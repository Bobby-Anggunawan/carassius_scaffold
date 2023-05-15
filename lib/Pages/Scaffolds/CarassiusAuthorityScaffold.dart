import 'package:flutter/material.dart';

import '../../UIStyle/CarassiusThemeGetter.dart';

class CarassiusAuthorityScaffold extends StatelessWidget {
  const CarassiusAuthorityScaffold({Key? key, required this.allowToSeePage, required this.main, this.notAllowed: null}) : super(key: key);

  /// kalau false [notAllowed] akan ditampilkan
  /// kalau true [main] akan ditampilkan
  final bool allowToSeePage;

  /// widget yang ditampilkan kalau **[allowToSeePage] == true**
  final Widget main;

  /// widget yang ditampilkan kalau **[allowToSeePage] == false**
  final Widget? notAllowed;

  @override
  Widget build(BuildContext context) {
    if(allowToSeePage){
      return main;
    }

    if(notAllowed != null){
      return notAllowed!;
    }

    //TODO: BUAT HALAMAN default YANG LEBIH BAGUS
    // tampilan widget default [notAllowed]
    return Scaffold(
      body: Center(
        child: Text(
          "Tidak boleh melihat halaman ini",
          style: CarassiusThemeGetter.textTheme(context).displayLarge,
        ),
      ),
    );
  }
}
