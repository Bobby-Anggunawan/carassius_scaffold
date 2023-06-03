import 'package:flutter/material.dart';

/// dialog yang menggabungkan datepicker dan timepicker dari material design untuk mengambil data Datetime
Future<DateTime?> CUIDialogMaterialDateTimePicker(BuildContext context)async{
  DateTime? date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100)
  );

  if(date != null){
    TimeOfDay? time = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now()
    );

    if(time != null){
      return DateTime(date.year, date.month, date.day, time.hour, time.minute);
    }
  }

  return null;
}
