import 'package:carassius_scaffold/Pages/CarassiusForbiddenPage.dart';
import 'package:carassius_scaffold/Pages/CarassiusScaffold.dart';
import 'package:carassius_scaffold/Pages/Scaffolds/CarassiusResponsiveScaffold.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'CarLoginPagePasswordLandscape.dart';
import 'CarLoginPageViewModel.dart';

class CarLoginPagePassword extends StatelessWidget {
  const CarLoginPagePassword({Key? key, required this.loginFunction, required this.backgroundImageResourcePath}) : super(key: key);

  /// background image yang ingin ditampilkan di halaman login ini
  final String? backgroundImageResourcePath;

  /// fungsi yang dipanggil jika login.
  /// parameter pertama adalah username, parameter kedua adalah password
  final Function(String username, String password) loginFunction;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CarLoginPageViewModel(changeUsernameToEmail: true),
        builder: (context, child){
          return CarassiusResponsiveScaffold(
              sameForAllOrientation: null,
              portrait: CarLoginPagePasswordLandscape(loginFunction: loginFunction, backgroundImageResourcePath: backgroundImageResourcePath,),
              landscape: CarassiusForbiddenPage(pesan: 'Halaman ini belum dibuat',)
          );
        }
    );
  }
}