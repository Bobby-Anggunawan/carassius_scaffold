import 'package:flutter/material.dart';

class CarassiusResponsiveScaffold extends StatelessWidget {
  const CarassiusResponsiveScaffold({Key? key, required this.sameForAllOrientation, required this.portrait, required this.landscape}) : super(key: key);

  /// kalau di set, jika perangkat portrait atau lanscape, widget ini akan menampilkan widget dari parameter ini (tidak peduli responsif atau tidak).
  /// kalau parameter ini tidak null, [portrait] dan [landscape] sebaiknya null.
  /// kalau [portrait] dan [landscape] tidak null, parameter ini boleh null
  final Widget? sameForAllOrientation;

  /// widget yang ditampilkan di tampilan portrait(smartphone).
  /// hanya ditampilkan kalau [sameForAllOrientation] == null.
  /// jika [sameForAllOrientation] == null, [portrait] dan [landscape] wajib diisi.
  /// jika [sameForAllOrientation] != null. [portrait] dan [landscape] boleh null.
  final Widget? portrait;

  /// widget yang ditampilkan di tampila landscape(pc).
  /// hanya ditampilkan kalau [sameForAllOrientation] == null.
  /// jika [sameForAllOrientation] == null, [portrait] dan [landscape] wajib diisi.
  /// jika [sameForAllOrientation] != null. [portrait] dan [landscape] boleh null.
  final Widget? landscape;

  @override
  Widget build(BuildContext context) {

    if(portrait == null || landscape == null){
      if(sameForAllOrientation == null){
        throw AssertionError("Kalau parameter sameForAllOrientation == null, parameter portrait dan landscape tidak boleh null");
      }
    }

    if(sameForAllOrientation != null){
      return sameForAllOrientation!;
    }

    return OrientationBuilder(builder: (BuildContext context, Orientation orientation) {
      if(orientation == Orientation.landscape) return landscape!;
      else return portrait!;
    },);
  }
}
