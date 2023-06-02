import 'package:carassius_scaffold/Lib/CarassiusConvertString.dart';
import 'package:carassius_scaffold/Pages/CarassiusScaffold.dart';
import 'package:carassius_scaffold/data/model/Pages/CarassiusScaffold/AuthorityScaffoldOptions.dart';
import 'package:carassius_scaffold/data/model/Pages/CarassiusScaffold/LoadingScaffoldOption.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarassiusScaffold(
        loadingScaffoldOption: LoadingScaffoldOption.noLoading(),
        authorityScaffoldOptions: AuthorityScaffoldOptions.singlePage(
            pageSameAllOrientation: null,
            pagePortrait: Scaffold(
              body: Center(
                child: Text("page1Portrait"),
              ),
            ),
            pageLandscape: Scaffold(
              body: Center(
                child: Text(CarassiusConvertString.addSpaceBetweenEachCapital("IkanAsinMakananKucing"))
              ),
              floatingActionButton: FloatingActionButton(
                child: Text("Ke Page 2"),
                onPressed: () {
                  Navigator.of(context).pushNamed("/page_dua");
                },
              ),
            )
        )
    );
  }
}
