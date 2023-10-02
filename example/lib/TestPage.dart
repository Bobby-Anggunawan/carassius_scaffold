import 'package:carassius_scaffold/Pages/ReadyToUse/AccountInfoPage/CarAccountInfoPage.dart';
import 'package:carassius_scaffold/UIStyle/Widget/KoiDateRangePicker.dart';
import 'package:carassius_scaffold/UIStyle/Widget/ListItems/CUIItemsListviewBasic.dart';
import 'package:carassius_scaffold/data/model/Pages/ReadyToUse/AccountInfoPage/CarAccountInfoPage/AccountInfo.dart';
import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: KoiDateRangePicker(firstDate: DateTime(2000), lastDate: DateTime.now(), onStartDateChanged: (DateTime value) { print("start time: ${value}"); }, onEndDateChanged: (DateTime? value) { print("end time: ${value}"); },),
      ),
    );
  }
}
