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

  /// ubah datetime ke string dengan format jj:mm. misalnya 07:50
  ///
  /// **Note**
  /// * karakter separator default adalah ":". Karakter ini bisa diganti dengan menset parameter [separator]
  /// * kalau data == null, fungsi ini akan mengembalikan string yang di set di parameter [showIfNull].
  /// * kalau [showWithSecond] == true, juga akan menampilkan detik, kalau false hanya menampilkan jam dan menit
  static String toStringJustTime(DateTime? data, bool showWithSecond, {String seperator = "-", String showIfNull = "-"}){
    if(data == null) return showIfNull;

    if(showWithSecond){
      return "${CarassiusConvertInt.toStringTwoDigitNumber(data.hour)}${seperator}${CarassiusConvertInt.toStringTwoDigitNumber(data.minute)}${seperator}${CarassiusConvertInt.toStringTwoDigitNumber(data.second)}";
    }
    return "${CarassiusConvertInt.toStringTwoDigitNumber(data.hour)}${seperator}${CarassiusConvertInt.toStringTwoDigitNumber(data.minute)}";
  }
}