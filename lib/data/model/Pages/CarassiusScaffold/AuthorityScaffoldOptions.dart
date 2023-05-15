import 'package:flutter/material.dart';

import '../../../../Pages/Scaffolds/CarassiusResponsiveScaffold.dart';

class AuthorityScaffoldOptions{
  /// kalau false [notAllowed] akan ditampilkan
  /// kalau true [main] akan ditampilkan
  bool allowToSeePage;
  /// indeks dari widget yang ditampilkan di variable [pages]. Sebaiknya diisi 0
  int authorityLevel;
  /// widget daftar yang ditampilkan kalau **[allowToSeePage] == true**. Widget yang ditampilkan adalah widget dengan indeks sesuai variable [authorityLevel]
  List<CarassiusResponsiveScaffold> pages;

  /// widget yang ditampilkan kalau **[allowToSeePage] == false**
  final Widget? notAllowedPage;

  AuthorityScaffoldOptions({
    required this.allowToSeePage,
    required this.authorityLevel,
    required this.pages,
    required this.notAllowedPage
  }){
    if(allowToSeePage){
      if(pages.isEmpty){
        throw AssertionError("AuthorityScaffoldOptions.pages tidak boleh kosong, minimal harus ada 1 widget");
      }
    }
  }

  /// dipakai kalau hanya ada 1 halaman untuk semua user(tidak ada user dibatasi mengakses halaman ini)
  static AuthorityScaffoldOptions singlePage({required Scaffold pagePortrait, required Scaffold pageLandscape}){
    return AuthorityScaffoldOptions(
        allowToSeePage: true,
        authorityLevel: 0,
        pages: [
          CarassiusResponsiveScaffold(
            portrait: pagePortrait,
            landscape: pageLandscape,
          )
        ],
        notAllowedPage: null
    );
  }
}