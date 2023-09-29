import 'package:flutter/material.dart';

/// file ini berisi fungsi fungsi penting yang umum digunakan yang berasal dari banyak library seperti fungsi navigate
class CarassiusState{
  /// Untuk kembali ke halaman sebelumnya
  static void navigatePop(BuildContext context){
    Navigator.pop(context);
  }
  /// untuk membuka halaman lain
  ///
  /// **Parameter**
  /// * pathHalamanTujuan : path halaman tujuan yang ditetapkan di widget CarassiusStartingApp. Misalnya "/otherscreen"
  /// * arguments : agrument optional untuk di pass ke halaman tujuan. Silahkan baca https://stackoverflow.com/questions/53304340/navigator-pass-arguments-with-pushnamed
  static void navigateToPage(BuildContext context, String pathHalamanTujuan, {Object? passedArguments : null}){
    Navigator.pushNamed(
      context,
      pathHalamanTujuan,
      arguments: passedArguments,
    );
  }
}