import 'package:carassius_scaffold/Pages/ReadyToUse/AccountInfoPage/CarAccountInfoPage.dart';
import 'package:carassius_scaffold/UIStyle/Widget/CUIDialogFullscreen.dart';
import 'package:carassius_scaffold/data/model/Pages/ReadyToUse/AccountInfoPage/CarAccountInfoPage/AccountInfo.dart';
import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarAccountInfoPage(
      accountInfo: AccountInfo(
        Image.network("https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg"),
        "Yeremia Bobby Anggunawan",
        "IT",
        "gtyugtvfrterhghgyuuy",
        "+6285157006136",
        "yeremia.blog@gmail.com"
      ),
      logOut: (){
        CUIDialogFullscreen(
          context: context,
          onConfirm: (){print("Klik Confirm");},
          penjelasanDialog: "ini adalah dialog test",
          judulDataDialog: DateTime.now().toIso8601String(),
            content: Center(
              child: Text("INI CONTENT DARI DIALOG INI"),
            )
        );
      },

    );
  }
}
