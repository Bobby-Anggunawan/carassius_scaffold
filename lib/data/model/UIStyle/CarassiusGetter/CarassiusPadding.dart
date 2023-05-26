import 'package:flutter/cupertino.dart';

class CarassiusPadding{


  /// jarak antara container satu dengan container lain kalau di device kecil kayak mobile.
  /// **Note** mengikuti guide material design di: https://m3.material.io/foundations/layout/applying-layout/compact
  static double _portraitPadding = 16;
  /// jarak antara container satu dengan container lain kalau di device kecil kayak mobile.
  /// **Note** mengikuti guide material design di: https://m3.material.io/foundations/layout/applying-layout/compact
  double get portraitPadding => CarassiusPadding._portraitPadding;
  set portraitPadding(double value) {
    CarassiusPadding._portraitPadding = value;
  }

  /// jarak antara container satu dengan container lain kalau di device normal kayak desktop
  /// **Note** mengikuti guide material design di: https://m3.material.io/foundations/layout/applying-layout/medium
  static double _landscapePadding = 24;
  /// jarak antara container satu dengan container lain kalau di device normal kayak desktop
  /// **Note** mengikuti guide material design di: https://m3.material.io/foundations/layout/applying-layout/medium
  double get landscapePadding => CarassiusPadding._landscapePadding;
  set landscapePadding(double value) {
    CarassiusPadding._landscapePadding = value;
  }


  /// otomatis mengembalikan nilai padding sesuai device sesuai yang diatur di [CarrasiusPadding.portraitPadding] dan [CarrasiusPadding.landscapePadding].
  /// berguna kalau satu halaman dipakai untuk portrait dan lanscape bersamaan.
  /// **NOTE** fungsi ini hanya mengkalkulasi device portrait atau tidak tiap 2 detik sekali. Jadi kalau di trigger berkali kali sebelum 2 detik, fungsi ini akan mereturn hasil kalkulasi sebelumbya
  double getAutoPadding(BuildContext context){

    bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    if(isPortrait){
      return _portraitPadding;
    }

    return _landscapePadding;

  }
}