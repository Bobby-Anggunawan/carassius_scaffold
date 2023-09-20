import 'package:carassius_scaffold/Pages/ReadyToUse/AccountInfoPage/CarAccountInfoPage.dart';
import 'package:carassius_scaffold/UIStyle/Widget/CUICardText.dart';
import 'package:carassius_scaffold/data/model/Pages/ReadyToUse/AccountInfoPage/CarAccountInfoPage/AccountInfo.dart';
import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CUICardText(
          title: "Ini judul card",
          content: "Ini content yang mau kutulis di dalam card. Memang tidak terlalu banyak, tapi hanya ini yang bisa kutulis. Padahal seharusnya konten itu panjang ya, tapi aku gak terlalu bisa nulis panjang panjang.",
          action: [
            TextButton(onPressed: (){}, child: Text("Ok")),
            TextButton(onPressed: (){}, child: Text("No")),
          ],
          width: 300,
          badge: Badge(
            label: Text("Ini badge"),
          ),
        ),
      ),
    );
  }
}
