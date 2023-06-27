import 'package:carassius_scaffold/Lib/CarassiusConvertDateTime.dart';

class BaseRequestUriParam{
  List<String> keys = [];
  List<String> values = [];

  String get uriParam{
    String ret = "";
    for(int x=0; x< keys.length; x++){
      if(x == 0){
        ret+="?";
      }
      else{
        ret+="&";
      }
      ret+="${keys[x]}=${values[x]}";
    }

    return ret;
  }

  /// digunakan untuk memasukkan parameter ke uri request ini. Sebenarnya ini bisa gak dipakai, langsung masukin uri ke url di baseRequest()
  /// Contoh penggunaan BaseRequestUriParam().addKey("name", "Clara").addKey("age", "7")
  BaseRequestUriParam addKey(String key, dynamic value){
    if(value != null){
      if(value is String){
        keys.add(key);
        values.add(value);
      }
      else if(value is DateTime){
        keys.add(key);
        values.add(CarassiusConvertDateTime.toStringJustDateAllNumber(value)!);
      }
      else if(value is int){
        keys.add(key);
        values.add(value.toString());
      }
      else{
        throw AssertionError("Tipe data ini tidak didukung di fungsi BaseRequestUriParam.addKey() ini");
      }
    }
    return this;
  }
}