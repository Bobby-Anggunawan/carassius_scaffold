/// Untuk menambah parameter form ke body, gunakan fungsi addKey().
/// Misalnya BaseRequestBody().addKey("name", "Clara").addKey("age", "7")
class BaseRequestBody{
  Map<String, String> _body ={};

  Map<String, String> get body =>  _body;

  /// digunakan untuk memasukkan parameter form ke body request
  /// Contoh penggunaan BaseRequestBody().addKey("name", "Clara").addKey("age", 7)
  /// **NOTE**
  /// * data yang NULL tidak akan dimasukkan
  /// * Semua tipe data akan dikonvert jadi STRING, karena body request emang harus string
  /// * khusus untuk data tipe BOOLEAN akan otomatis diconvert jadi 0 atau 1
  /// * khusus tipe data DATETIME akan diconvert jadi string dengan format yyyy-mm-dd jj:mm:ss
  BaseRequestBody addKey(String key, dynamic value){
    if(value!= null){

      if(value is bool){
        _body[key] = value ? "1" : "0";
      }
      if(value is DateTime){
        var val = value as DateTime;
        _body[key] = "${val.year}-${val.month}-${val.day} ${val.hour}:${val.minute}:${val.second}";
      }
      else{
        _body[key] = value.toString();
      }
    }
    return this;
  }
}