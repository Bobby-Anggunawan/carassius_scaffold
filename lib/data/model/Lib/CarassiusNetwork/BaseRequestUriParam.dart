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
  BaseRequestUriParam addKey(String key, String value){
    keys.add(key);
    values.add(value);
    return this;
  }
}