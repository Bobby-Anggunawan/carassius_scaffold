import 'package:carassius_scaffold/Pages/CarassiusScaffold.dart';
import 'package:carassius_scaffold/data/model/Pages/CarassiusScaffold/AuthorityScaffoldOptions.dart';
import 'package:carassius_scaffold/data/model/Pages/CarassiusScaffold/LoadingScaffoldOption.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarassiusScaffold(
        loadingScaffoldOption: LoadingScaffoldOption.noLoading(),
        authorityScaffoldOptions: AuthorityScaffoldOptions.singlePage(
            pageSameAllOrientation: null,
            pagePortrait: Scaffold(
              body: Center(
                child: Text("page2Portrait"),
              ),
            ),
            pageLandscape: Scaffold(
              body: Center(
                child: Text("page2Landscape"),
              ),
              floatingActionButton: FloatingActionButton(
                child: Text("Ke Page 1"),
                onPressed: () {
                  Navigator.of(context).pushNamed("/");
                },
              ),
            )
        )
    );
  }
}
