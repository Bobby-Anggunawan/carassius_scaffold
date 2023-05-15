import 'package:carassius_scaffold/Pages/Scaffolds/CarassiusResponsiveScaffold.dart';
import 'package:flutter/material.dart';

import '../../UIStyle/CarassiusThemeGetter.dart';

class CarassiusAuthorityScaffold extends StatelessWidget {
  const CarassiusAuthorityScaffold({Key? key, required this.allowToSeePage, required this.pages, required this.authorityLevel, this.notAllowedPage: null}) : super(key: key);

  /// kalau false [notAllowedPage] akan ditampilkan
  /// kalau true **pages[authorityLevel]** akan ditampilkan
  final bool allowToSeePage;

  /// indeks dari widget yang ditampilkan di variable [pages]
  final int authorityLevel;
  /// widget daftar yang ditampilkan kalau **[allowToSeePage] == true**. Widget yang ditampilkan adalah widget dengan indeks sesuai variable [authorityLevel]
  final List<CarassiusResponsiveScaffold> pages;

  /// widget yang ditampilkan kalau **[allowToSeePage] == false**
  final Widget? notAllowedPage;

  @override
  Widget build(BuildContext context) {

    if(authorityLevel < 0 && authorityLevel > pages.length-1){
      throw AssertionError("variable CarassiusAuthorityScaffold.authorityLevel seharusnya lebih besar dari 0 dan tidak melebihi indeks maksimal dari list CarassiusAuthorityScaffold.pages");
    }

    if(allowToSeePage){
      return pages[authorityLevel];
    }

    if(notAllowedPage != null){
      return notAllowedPage!;
    }

    //TODO: BUAT HALAMAN default YANG LEBIH BAGUS
    // tampilan widget default [notAllowed]
    return Center(
      child: Text(
        "Tidak boleh melihat halaman ini",
        style: CarassiusThemeGetter.textTheme(context).displayLarge,
      ),
    );
  }
}
