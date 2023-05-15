import 'package:flutter/material.dart';

class CarassiusResponsiveScaffold extends StatelessWidget {
  const CarassiusResponsiveScaffold({Key? key, required this.portrait, required this.landscape}) : super(key: key);

  /// widget yang ditampilkan di tampilan portrait(smartphone)
  final Widget portrait;

  /// widget yang ditampilkan di tampila landscape(pc)
  final Widget landscape;

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (BuildContext context, Orientation orientation) {
      if(orientation == Orientation.landscape) return landscape;
      else return portrait;
    },);
  }
}
