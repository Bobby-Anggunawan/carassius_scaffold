import 'package:flutter/material.dart';

class CarassiusLoadingPage extends StatelessWidget {
  const CarassiusLoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
