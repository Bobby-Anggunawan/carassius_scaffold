/// Untuk menambah parameter form ke body, gunakan fungsi addKey().
/// Misalnya BaseRequestBody().addKey("name", "Clara").addKey("age", "7")
class BaseRequestBody{
  Map<String, String> _body ={};

  Map<String, String> get body =>  _body;

  /// digunakan untuk memasukkan parameter form ke body request
  /// Contoh penggunaan BaseRequestBody().addKey("name", "Clara").addKey("age", "7")
  BaseRequestBody addKey(String key, String? value){
    if(value!= null){
      _body[key] = value;
    }
    return this;
  }
}