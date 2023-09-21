import 'package:carassius_scaffold/Pages/ReadyToUse/AccountInfoPage/CarAccountInfoPage.dart';
import 'package:carassius_scaffold/UIStyle/Widget/ListItems/CUIItemsListviewBasic.dart';
import 'package:carassius_scaffold/data/model/Pages/ReadyToUse/AccountInfoPage/CarAccountInfoPage/AccountInfo.dart';
import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.amber,
          width: 500,
          child: CUIItemsListviewBasic(
            leading: CircleAvatar(
              child: Text("T"),
            ),
            title: 'Ini judul list item',
            subtitle: 'Ini subtitke dari list item. Gak usah panjang panjang yang penting bisa dilihat untuk jadi contoh. Lorem ipsum dolor sit amet pun boleh. Ini kan cuma test, terserah saya tulis apa....',
            trailing: Badge(
              label: Text("1 Pesan"),
            ),
          ),
        ),
      ),
    );
  }
}
