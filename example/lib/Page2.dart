import 'package:carassius_scaffold/Pages/CarassiusScaffold.dart';
import 'package:carassius_scaffold/data/model/Pages/CarassiusScaffold/AuthorityScaffoldOptions.dart';
import 'package:carassius_scaffold/data/model/Pages/CarassiusScaffold/LoadingScaffoldOption.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarassiusScaffold(
        authorityScaffoldOptions: AuthorityScaffoldOptions(
            notAllowed: null,
            allowToSeePage: true
        ),
        loadingScaffoldOption: LoadingScaffoldOption.noLoading(),
        pageLandscape: pageLandscape,
        pagePortrait: pagePortrait
    );
  }
}
