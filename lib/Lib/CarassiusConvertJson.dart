class CarassiusConvertJson{
  /// ubah list ke string dengan format
  ///
  /// '["satu", "dua", "tiga"]'
  static String listStringToJson(List<String> alist){
    String ret = "";
    alist.forEach((element) {
      if(ret == ""){
        ret='"${element}"';
      }
      else{
        ret+=', "${element}"';
      }
    });

    return "[${ret}]";
  }
}