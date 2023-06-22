import 'package:carassius_scaffold/Lib/CarassiusConvertInt.dart';

import '../data/model/Lib/CarassiusConvertDateTime/ShowWhenNegativeOrPositive.dart';

/// berisi berbagai fungsi untuk mengkonvert data ke datetime
class CarassiusConvertDateTime{

  /// parse datretime dari string atau return null kalau datetimenya null
  static DateTime? parseFromStringOrNull(String? source){

    if(source == null) return null;

    return DateTime.parse(source);
  }

  /// ubah datetime ke string dengan format dd-mm-yyyy. misalnya 21-04-2000
  ///
  /// **Note**
  /// * karakter separator default adalah "-". Karakter ini bisa diganti dengan menset parameter [separator]
  /// * kalau data == null, fungsi ini akan mengembalikan string yang di set di parameter [showIfNull].
  static String? toStringJustDateAllNumber(DateTime? data, {String seperator = "-", String? showIfNull = "-"}){
    if(data == null) return showIfNull;
    return "${CarassiusConvertInt.toStringTwoDigitNumber(data.day)}${seperator}${CarassiusConvertInt.toStringTwoDigitNumber(data.month)}${seperator}${data.year}";
  }

  /// ubah datetime ke string dengan format dd-mmmm-yyyy. misalnya 21 april 2000
  ///
  /// **Note**
  /// * karakter separator default adalah " ". Karakter ini bisa diganti dengan menset parameter [separator]
  /// * kalau data == null, fungsi ini akan mengembalikan string yang di set di parameter [showIfNull].
  static String? toStringJustDateWithDateName(DateTime? data, {String seperator = " ", String? showIfNull = "-"}){
    if(data == null) return showIfNull;
    return "${CarassiusConvertInt.toStringTwoDigitNumber(data.day)}${seperator}${toStringMonthName(data.month)}${seperator}${data.year}";
  }

  /// ubah datetime ke string dengan format jj:mm. misalnya 07:50
  ///
  /// **Note**
  /// * karakter separator default adalah ":". Karakter ini bisa diganti dengan menset parameter [separator]
  /// * kalau data == null, fungsi ini akan mengembalikan string yang di set di parameter [showIfNull].
  /// * kalau [showWithSecond] == true, juga akan menampilkan detik, kalau false hanya menampilkan jam dan menit
  static String? toStringJustTime(DateTime? data, bool showWithSecond, {String seperator = ":", String? showIfNull = "-"}){
    if(data == null) return showIfNull;

    if(showWithSecond){
      return "${CarassiusConvertInt.toStringTwoDigitNumber(data.hour)}${seperator}${CarassiusConvertInt.toStringTwoDigitNumber(data.minute)}${seperator}${CarassiusConvertInt.toStringTwoDigitNumber(data.second)}";
    }
    return "${CarassiusConvertInt.toStringTwoDigitNumber(data.hour)}${seperator}${CarassiusConvertInt.toStringTwoDigitNumber(data.minute)}";

  }

  /// misalnya data yang di pass ke fungsi ini tanggal 1 sedang kan sekarang tanggal 2, fungsi ini akan mereturn "Kemarin jj:mm"
  ///
  /// Secara garis besar, penggunaannya sama dengan [toStringJustTime()]
  static String? toStringJustTimeWithDateIfNotToday(DateTime? data, bool showWithSecond, {String seperator = ":", String? showIfNull = "-"}){
    if(data == null) return showIfNull;

    String? trailFrom;
    var nowTime = DateTime.now();

    if(nowTime.day != data.day || nowTime.month != data.month || nowTime.year != data.year){
      var testBesok = nowTime.add(Duration(days: 1));
      var testLusa = nowTime.add(Duration(days: 2));
      var testKemarin = nowTime.subtract(Duration(days: 1));
      if(testBesok.year == data.year && testBesok.month == data.month && testBesok.day == data.day){
        trailFrom = "Besok";
      }
      else if(testLusa.year == data.year && testLusa.month == data.month && testLusa.day == data.day){
        trailFrom = "Lusa";
      }
      else if(testKemarin.year == data.year && testKemarin.month == data.month && testKemarin.day == data.day){
        trailFrom = "Kemarin";
      }
      else{
        trailFrom = "${CarassiusConvertInt.toStringTwoDigitNumber(data.day)} ${toStringMonthName(data.month)}";
      }

      trailFrom = trailFrom+" ";
    }

    ///========================

    if(showWithSecond){
      return "${trailFrom ?? ""}${CarassiusConvertInt.toStringTwoDigitNumber(data.hour)}${seperator}${CarassiusConvertInt.toStringTwoDigitNumber(data.minute)}${seperator}${CarassiusConvertInt.toStringTwoDigitNumber(data.second)}";
    }
    return "${trailFrom ?? ""}${CarassiusConvertInt.toStringTwoDigitNumber(data.hour)}${seperator}${CarassiusConvertInt.toStringTwoDigitNumber(data.minute)}";
  }

  /// membuat string timespan dari 2 datetime misalnya 10 Jan sampai 11 Apr atau 11:30 sampai 12:37
  ///
  /// **Note**
  /// * karakter separator default adalah "sampai". Karakter ini bisa diganti dengan menset parameter [separator]
  /// * kalau dateFrom dan dateTo == null, fungsi ini akan mengembalikan string yang di set di parameter [showIfNull].
  /// * kalau [showMonthName] == true, akan menampilkan nama bulan misalnya april atau mei, sebaliknya hanya menampilkan angka seperti 04 atau 05
  static String generateStringTimespan(DateTime? dateFrom, DateTime? dateTo, {String seperator = "sampai", String showIfNull = "-", bool showMonthName = true}){
    if(dateFrom == null || dateTo == null){
      return showIfNull;
    }

    String? trailFrom;
    String? trailTo;

    var nowTime = DateTime.now();

    var testBesok = nowTime.add(Duration(days: 1));
    var testLusa = nowTime.add(Duration(days: 2));
    var testKemarin = nowTime.subtract(Duration(days: 1));

    if(testBesok.year == dateFrom.year && testBesok.month == dateFrom.month && testBesok.day == dateFrom.day){
      trailFrom = "Besok";
    }
    else if(testLusa.year == dateFrom.year && testLusa.month == dateFrom.month && testLusa.day == dateFrom.day){
      trailFrom = "Lusa";
    }
    else if(testKemarin.year == dateFrom.year && testKemarin.month == dateFrom.month && testKemarin.day == dateFrom.day){
      trailFrom = "Kemarin";
    }


    if(testBesok.year == dateTo.year && testBesok.month == dateTo.month && testBesok.day == dateTo.day){
      trailTo = "Besok";
    }
    else if(testLusa.year == dateTo.year && testLusa.month == dateTo.month && testLusa.day == dateTo.day){
      trailTo = "Lusa";
    }
    else if(testKemarin.year == dateTo.year && testKemarin.month == dateTo.month && testKemarin.day == dateTo.day){
      trailTo = "Kemarin";
    }

    if(dateFrom.year != dateTo.year || dateFrom.month != dateTo.month || dateFrom.day != dateTo.day){

      if(trailFrom != null || trailTo != null){
        String addTimeFrom = (trailFrom != null) ? " "+toStringJustTime(dateFrom, false).toString() : "";
        String addTimeTo = (trailTo != null) ? " "+toStringJustTime(dateTo, false).toString() : "";

        String istrailFromNull = "${CarassiusConvertInt.toStringTwoDigitNumber(dateFrom.day)} ${toStringMonthName(dateFrom.month)}";
        String istrailToNull = "${CarassiusConvertInt.toStringTwoDigitNumber(dateTo.day)} ${toStringMonthName(dateTo.month)}";

        //TODO!!! BUG, harusnya return yang dicomment dibawah yang benar, tapi entah kenapa yang gak di comment yang benar
        return "${trailFrom ?? istrailFromNull}${addTimeFrom} ${seperator} ${trailTo ?? istrailToNull}${addTimeTo}";
        //return "${trailFrom ?? istrailFromNull}${addTimeFrom} ${seperator} ${addTimeTo}";
      }
      else{
        if(showMonthName){
          return "${trailFrom ?? toStringJustDateWithDateName(dateFrom)}${seperator}${trailTo ?? toStringJustDateWithDateName(dateTo)}";
        }
        else{
          return "${trailFrom ?? toStringJustDateAllNumber(dateFrom)}${seperator}${trailTo ?? toStringJustDateAllNumber(dateTo)}";
        }
      }
    }

    return "${toStringJustTime(dateFrom, false)}${seperator}${toStringJustTime(dateTo, false)}";
  }

  /// Digunakan untuk mereturn selisih time pertama dan kedua.
  /// Misalnya hasil returnnya bisa jadi 5 menit, 2 jam, atau 3 detik tergantung besar perbedaannya
  /// leading adalah kata tambahan yang ditampilkan di awal string hasil return
  /// trailing adalah kata tambahan yang ditampilkan di akhir string hasil return
  static String? generateStringDifference(DateTime? dateFrom, DateTime? dateTo, ShowWhenNegativeOrPositive leading, ShowWhenNegativeOrPositive trailing){
    if(dateFrom!= null && dateTo != null){
      var selisih = dateFrom.difference(dateTo);
      if(selisih.inHours.abs() > 24){
        return leading.getResult(selisih.inDays)+"${selisih.inDays.abs()} Hari"+trailing.getResult(selisih.inDays);
      }
      else if(selisih.inMinutes.abs() > 60){
        return leading.getResult(selisih.inHours)+"${selisih.inHours.abs()} Jam"+trailing.getResult(selisih.inHours);
      }
      else if(selisih.inSeconds.abs() > 60){
        return leading.getResult(selisih.inMinutes)+"${selisih.inMinutes.abs()} Menit"+trailing.getResult(selisih.inMinutes);
      }
      else{
        return leading.getResult(selisih.inSeconds)+"${selisih.inSeconds.abs()} Detik"+trailing.getResult(selisih.inSeconds);
      }
    }
    else{
      return null;
    }
  }

  /// Untuk mereturn nama bulan dari string. Misalnya 4 jadi April
  static String toStringMonthName(int bulan){
    switch(bulan){
      case 1:
        return "Januari";
      case 2:
        return "Februari";
      case 3:
        return "Maret";
      case 4:
        return "April";
      case 5:
        return "Mei";
      case 6:
        return "Juni";
      case 7:
        return "Juli";
      case 8:
        return "Agustus";
      case 9:
        return "September";
      case 10:
        return "Ontober";
      case 11:
        return "November";
      case 12:
        return "Desember";
      default:
        throw AssertionError("Bulan harus bernilai antara 1 dan 12");
    }
  }
}