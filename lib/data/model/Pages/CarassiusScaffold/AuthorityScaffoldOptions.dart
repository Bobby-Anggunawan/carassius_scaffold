import 'package:flutter/material.dart';

class AuthorityScaffoldOptions{
  /// kalau false widget [notAllowed] akan ditampilkan
  /// kalau true [main] akan ditampilkan
  late bool allowToSeePage;

  /// widget yang ditampilkan kalau **[allowToSeePage] == false**
  /// kalau null akan menampilkan widget dafault
  late Widget? notAllowed;

  AuthorityScaffoldOptions({
    required this.notAllowed,
    required this.allowToSeePage
  }){}

  /// builder kalau widget ini tidak membatasi user, semua user bisa lihat halaman
  static AuthorityScaffoldOptions alowAllUSer(){
    return AuthorityScaffoldOptions(
        notAllowed: null,
        allowToSeePage: true
    );
  }
}