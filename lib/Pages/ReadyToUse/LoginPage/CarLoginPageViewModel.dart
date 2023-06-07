import 'package:flutter/cupertino.dart';

/// saran login menggunakan firebase auth :)
class CarLoginPageViewModel extends ChangeNotifier{

  /// kalau misalnya login pakai firebase auth tipe password, usernamenya wajib email. Kalau ini true, otomatis menambah @+[usernameEmailURL] di belakang username yang dimasukkan
  late bool changeUsernameToEmail;
  /// kalau [changeUsernameToEmail] bernilai true, tambahkan url ini di belakang username untuk mengubahnya jadi email
  late String usernameEmailURL;

  /// halaman ini dirancang khusus untuk dipakai menggunakan firebase auth
  CarLoginPageViewModel({required this.changeUsernameToEmail, this.usernameEmailURL : "salties.com"}){
  }

  String? _pesanError;
  String? get pesanError{
    return _pesanError;
  }
  set pesanError(String? value){
    _pesanError = value;
    notifyListeners();
  }

  String? _username;
  String? password;
  bool _isPasswordHidden = true;
  bool get isPasswordHidden{
    return _isPasswordHidden;
  }
  set isPasswordHidden(bool value){
    _isPasswordHidden = value;
    notifyListeners();
  }

  String? get username{
    return _username;
  }
  set username(String? value){

    if(value != value?.replaceAll(" ", "").toLowerCase()){

      pesanError = "Warning: Whitespace di username akan dihapus dan semua huruf akan diubah jadi lowercase";

      notifyListeners();
    }

    if(changeUsernameToEmail){
      _username = "${value?.replaceAll(" ", "").toLowerCase()}@${usernameEmailURL}";
    }
    else{
      _username = value?.replaceAll(" ", "").toLowerCase();
    }
  }


}