class CarassiusConvertInt{
  /// misalnya nomornya 9, returnnya 09
  ///
  /// kalau nomornya 11, returnnya 11 karena emang sudah 2 digit
  ///
  /// <sudah masuk carassius blueprint>
  static String toStringTwoDigitNumber(int number){
    if(number< 10){
      return "0${number}";
    }
    return number.toString();
  }
}