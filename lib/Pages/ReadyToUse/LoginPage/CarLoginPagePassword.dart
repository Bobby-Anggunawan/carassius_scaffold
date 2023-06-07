import 'package:carassius_scaffold/Pages/CarassiusForbiddenPage.dart';
import 'package:carassius_scaffold/Pages/CarassiusScaffold.dart';
import 'package:carassius_scaffold/Pages/Scaffolds/CarassiusResponsiveScaffold.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'CarLoginPagePasswordLandscape.dart';
import 'CarLoginPageViewModel.dart';

class CarLoginPagePassword extends StatelessWidget {
  const CarLoginPagePassword({Key? key, required this.loginFunction, this.pageTitle : "Login", required this.linkToOtherPage, required this.changeUsernameToEmail, this.usernameEmailURL: "salties.com", required this.backgroundImageResourcePath}) : super(key: key);

  /// title yang ditampilkan di halaman ini (diatas textfield username dan tombol dibawah password)
  final String pageTitle;

  /// background image yang ingin ditampilkan di halaman login ini
  final String? backgroundImageResourcePath;

  /// fungsi yang dipanggil jika login.
  /// parameter pertama adalah username, parameter kedua adalah password
  final Function(String username, String password) loginFunction;

  /// kalau [changeUsernameToEmail] bernilai true, tambahkan url ini di belakang username untuk mengubahnya jadi email
  final String usernameEmailURL;
  /// kalau misalnya login pakai firebase auth tipe password, usernamenya wajib email. Kalau ini true, otomatis menambah @+[usernameEmailURL] di belakang username yang dimasukkan
  final bool changeUsernameToEmail;

  /// misalnya untuk buat teks button untuk mengarahkan user ke halaman signup
  final Widget? linkToOtherPage;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CarLoginPageViewModel(changeUsernameToEmail: true),
        builder: (context, child){
          return CarassiusResponsiveScaffold(
              sameForAllOrientation: null,
              portrait: CarassiusForbiddenPage(pesan: 'Halaman ini belum dibuat',),
              landscape: CarLoginPagePasswordLandscape(loginFunction: loginFunction, pageTitle: pageTitle, linkToOtherPage: linkToOtherPage, backgroundImageResourcePath: backgroundImageResourcePath,)
          );
        }
    );
  }
}