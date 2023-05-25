import 'package:carassius_scaffold/Pages/CarassiusLoadingPage.dart';
import 'package:carassius_scaffold/Pages/Scaffolds/CarassiusAuthorityScaffold.dart';
import 'package:carassius_scaffold/Pages/Scaffolds/CarassiusLoadingScaffold.dart';
import 'package:carassius_scaffold/Pages/Scaffolds/CarassiusResponsiveScaffold.dart';
import 'package:carassius_scaffold/data/model/Pages/CarassiusScaffold/LoadingScaffoldOption.dart';
import 'package:flutter/material.dart';

import '../data/model/Pages/CarassiusScaffold/AuthorityScaffoldOptions.dart';

/// page yang dipakai sebagai dasar membuat page baru dalam framework ini
class CarassiusScaffold extends StatelessWidget {
  const CarassiusScaffold({
    Key? key,

    required this.authorityScaffoldOptions,
    required this.loadingScaffoldOption,

  }) : super(key: key);

  /// option untuk class [CarassiusAuthorityScaffold]
  /// Digunakan untuk memblokir atau memberi akses user ke halaman ini
  /// **NOTE** Page yang ditampilkan di halaman ini di masukkan ke dalam option ini
  final AuthorityScaffoldOptions authorityScaffoldOptions;

  /// option ini digunakan class [CarassiusLoadingScaffold]
  /// digunakan untuk menampilkan spinner kalau loading
  final LoadingScaffoldOption loadingScaffoldOption;

  @override
  Widget build(BuildContext context) {
    return CarassiusLoadingScaffold(
      isLoading: loadingScaffoldOption.isLoading,
      isLoadingOverlay: loadingScaffoldOption.isLoadingOverlay,
      loadingWidget: loadingScaffoldOption.loadingWidget,
      main: CarassiusAuthorityScaffold(
        allowToSeePage: authorityScaffoldOptions.allowToSeePage,
        showedPagesIndex: authorityScaffoldOptions.showedPagesIndex,
        pages: authorityScaffoldOptions.pages,
        notAllowedPage: authorityScaffoldOptions.notAllowedPage,
      ),
    );
  }
}
