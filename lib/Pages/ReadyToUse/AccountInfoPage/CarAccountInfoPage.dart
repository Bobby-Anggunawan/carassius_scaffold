import 'package:carassius_scaffold/Pages/CarassiusForbiddenPage.dart';
import 'package:carassius_scaffold/Pages/ReadyToUse/AccountInfoPage/CarAccountInfoPageLanscape.dart';
import 'package:carassius_scaffold/Pages/Scaffolds/CarassiusResponsiveScaffold.dart';
import 'package:carassius_scaffold/data/model/Pages/ReadyToUse/AccountInfoPage/CarAccountInfoPage/AccountInfo.dart';
import 'package:flutter/material.dart';

class CarAccountInfoPage extends StatelessWidget {
  const CarAccountInfoPage({Key? key, required this.accountInfo, required this.logOut}) : super(key: key);

  /// info akun yang ditampilkan di halaman ini
  final AccountInfo accountInfo;

  /// masukkan fungsi yang dipanggil kalau tombol logout ditekan
  final Function logOut;

  @override
  Widget build(BuildContext context) {
    return CarassiusResponsiveScaffold(
        sameForAllOrientation: null,
        portrait: CarassiusForbiddenPage(pesan: 'Belum diimplementasikan',),
        landscape: CarAccountInfoPageLandscape(accountInfo: accountInfo, logOut: logOut)
    );
  }
}
