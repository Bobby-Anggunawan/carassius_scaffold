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

    required this.pageLandscape,
    required this.pagePortrait
  }) : super(key: key);

  /// option untuk class [CarassiusAuthorityScaffold]
  /// Digunakan untuk memblokir atau memberi akses user ke halaman ini
  final AuthorityScaffoldOptions authorityScaffoldOptions;

  /// option ini digunakan class [CarassiusLoadingScaffold]
  /// digunakan untuk menampilkan spinner kalau loading
  final LoadingScaffoldOption loadingScaffoldOption;

  /// widget yang ditampilkan di tampilan portrait(smartphone)
  final Scaffold pagePortrait;
  /// widget yang ditampilkan di tampila landscape(pc)
  final Scaffold pageLandscape;

  @override
  Widget build(BuildContext context) {
    return CarassiusAuthorityScaffold(
      allowToSeePage: authorityScaffoldOptions.allowToSeePage,
      notAllowed: authorityScaffoldOptions.notAllowed,
      main: CarassiusLoadingScaffold(
        isLoading: loadingScaffoldOption.isLoading,
        isLoadingOverlay: loadingScaffoldOption.isLoadingOverlay,
        loadingWidget: loadingScaffoldOption.loadingWidget,
        main: CarassiusResponsiveScaffold(
          portrait: pagePortrait,
          landscape: pageLandscape,
        ),
      )
    );
  }
}
