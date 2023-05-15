import 'package:flutter/material.dart';

class AuthorityScaffoldOptions{
  /// kalau false widget [notAllowed] akan ditampilkan
  /// kalau true [main] akan ditampilkan
  late bool allowToSeePage;

  /// widget yang ditampilkan kalau **[allowToSeePage] == false**
  /// kalau null akan menampilkan widget dafault
  late Widget? notAllowed;

  AuthorityScaffoldOptions(
      bool AllowToSeePage,
      Widget? NotAllowed
  ){
    allowToSeePage = AllowToSeePage;
    notAllowed = NotAllowed;
  }
}