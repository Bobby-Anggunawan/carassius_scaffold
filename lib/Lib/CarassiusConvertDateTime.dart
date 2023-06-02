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
  /// **Note**, karakter separator default adalah "-". Karakter ini bisa diganti dengan menset parameter [separator]
  static String toStringJustDateAllNumber(DateTime? data, {String seperator = "-"}){
    if(data == null) return "-";
    return "${CarassiusConvertInt.toStringTwoDigitNumber(data.day)}${seperator}${CarassiusConvertInt.toStringTwoDigitNumber(data.month)}${seperator}${data.year}";
  }
}