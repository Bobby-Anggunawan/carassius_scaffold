import 'package:carassius_scaffold/Pages/CarassiusForbiddenPage.dart';
import 'package:carassius_scaffold/Pages/Scaffolds/CarassiusResponsiveScaffold.dart';
import 'package:flutter/material.dart';
import '../../UIStyle/CarassiusGetter.dart';

class CarassiusAuthorityScaffold extends StatelessWidget {
  const CarassiusAuthorityScaffold({Key? key, required this.allowToSeePage, required this.pages, required this.showedPagesIndex, this.notAllowedPage: null}) : super(key: key);

  /// kalau false [notAllowedPage] akan ditampilkan
  /// kalau true **pages[showedPagesIndex]** akan ditampilkan
  final bool allowToSeePage;

  /// indeks dari widget yang ditampilkan di variable [pages]
  final int showedPagesIndex;
  /// widget daftar yang ditampilkan kalau **[allowToSeePage] == true**. Widget yang ditampilkan adalah widget dengan indeks sesuai variable [showedPagesIndex]
  final List<Widget> pages;

  /// widget yang ditampilkan kalau **[allowToSeePage] == false**
  final Widget? notAllowedPage;

  @override
  Widget build(BuildContext context) {

    if(showedPagesIndex < 0 && showedPagesIndex > pages.length-1){
      throw AssertionError("variable CarassiusAuthorityScaffold.showedPagesIndex seharusnya lebih besar dari 0 dan tidak melebihi indeks maksimal dari list CarassiusAuthorityScaffold.pages");
    }

    if(allowToSeePage){
      return pages[showedPagesIndex];
    }

    if(notAllowedPage != null){
      return notAllowedPage!;
    }

    return CarassiusForbiddenPage(pesan: null);
  }
}
