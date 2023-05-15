import '../../../../Pages/Scaffolds/CarassiusResponsiveScaffold.dart';

class AuthorityScaffoldOptions{
  /// kalau false [notAllowed] akan ditampilkan
  /// kalau true [main] akan ditampilkan
  bool allowToSeePage;
  /// indeks dari widget yang ditampilkan di variable [pages]. Sebaiknya diisi 0
  int authorityLevel;
  /// widget daftar yang ditampilkan kalau **[allowToSeePage] == true**. Widget yang ditampilkan adalah widget dengan indeks sesuai variable [authorityLevel]
  List<CarassiusResponsiveScaffold> pages;

  AuthorityScaffoldOptions({
    required this.allowToSeePage,
    required this.authorityLevel,
    required this.pages
  }){
    if(allowToSeePage){
      if(pages.isEmpty){
        throw AssertionError("AuthorityScaffoldOptions.pages tidak boleh kosong, minimal harus ada 1 widget");
      }
      pages.forEach((element) {
        if(element.semuaWidgetScaffold() == false){
          throw AssertionError("AuthorityScaffoldOptions.pages harus diisi widget Scaffold di portrait dan landscape");
        }
      });
    }
  }
}