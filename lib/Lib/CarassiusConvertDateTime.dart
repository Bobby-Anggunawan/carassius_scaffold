import 'package:carassius_scaffold/Lib/CarassiusConvertInt.dart';

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
  static String toStringJustDateAllNumber(DateTime? data, {String seperator = "-", String showIfNull = "-"}){
    if(data == null) return showIfNull;
    return "${CarassiusConvertInt.toStringTwoDigitNumber(data.day)}${seperator}${CarassiusConvertInt.toStringTwoDigitNumber(data.month)}${seperator}${data.year}";
  }

  /// ubah datetime ke string dengan format dd-mmmm-yyyy. misalnya 21 april 2000
  ///
  /// **Note**
  /// * karakter separator default adalah " ". Karakter ini bisa diganti dengan menset parameter [separator]
  /// * kalau data == null, fungsi ini akan mengembalikan string yang di set di parameter [showIfNull].
  static String toStringJustDateWithDateName(DateTime? data, {String seperator = " ", String showIfNull = "-"}){
    if(data == null) return showIfNull;
    return "${CarassiusConvertInt.toStringTwoDigitNumber(data.day)}${seperator}${toStringMonthName(data.month)}${seperator}${data.year}";
  }

  /// ubah datetime ke string dengan format jj:mm. misalnya 07:50
  ///
  /// **Note**
  /// * karakter separator default adalah ":". Karakter ini bisa diganti dengan menset parameter [separator]
  /// * kalau data == null, fungsi ini akan mengembalikan string yang di set di parameter [showIfNull].
  /// * kalau [showWithSecond] == true, juga akan menampilkan detik, kalau false hanya menampilkan jam dan menit
  static String toStringJustTime(DateTime? data, bool showWithSecond, {String seperator = ":", String showIfNull = "-"}){
    if(data == null) return showIfNull;

    if(showWithSecond){
      return "${CarassiusConvertInt.toStringTwoDigitNumber(data.hour)}${seperator}${CarassiusConvertInt.toStringTwoDigitNumber(data.minute)}${seperator}${CarassiusConvertInt.toStringTwoDigitNumber(data.second)}";
    }
    return "${CarassiusConvertInt.toStringTwoDigitNumber(data.hour)}${seperator}${CarassiusConvertInt.toStringTwoDigitNumber(data.minute)}";
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

    //cek apakah dateFrom dan dateTo ada di hari yang sama
    if(dateFrom.day != dateTo.day || dateFrom.month != dateTo.month || dateFrom.year != dateTo.year){
      if(showMonthName){
        return "${toStringJustDateWithDateName(dateFrom)}${seperator}${toStringJustDateWithDateName(dateTo)}";
      }
      else{
        return "${toStringJustDateAllNumber(dateFrom)}${seperator}${toStringJustDateAllNumber(dateTo)}";
      }
    }

    return "${toStringJustTime(dateTo, false)}${seperator}${toStringJustTime(dateFrom, false)}";
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