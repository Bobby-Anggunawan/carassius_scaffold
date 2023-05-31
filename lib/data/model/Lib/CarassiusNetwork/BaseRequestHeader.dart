/// digunakan untuk memasukkan parameter header ke request, gunakan fungsi addKey().
/// Misalnya BaseRequestHeader().addKey("Authorization", "1829741036").addKey("Content-Type", "application/json")
class BaseRequestHeader{
  Map<String, String> _header ={};

  Map<String, String> get header => _header;

  /// digunakan untuk memasukkan parameter form ke body request
  /// Contoh penggunaan BaseRequestHeader().addKey("Authorization", "1829741036").addKey("Content-Type", "application/json")
  BaseRequestHeader addKey(String key, String value){
    _header[key] = value;
    return this;
  }
}