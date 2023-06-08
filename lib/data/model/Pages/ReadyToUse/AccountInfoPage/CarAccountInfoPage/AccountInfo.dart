import 'package:flutter/material.dart';

class AccountInfo{

  late Image? profilPicture;

  // Basic info
  late String? nama;
  late String? bio;
  late String? accountID;

  // contact info
  late String? telp;
  late String? email;

  AccountInfo(
    Image? _profilPicture,
    String? _nama,
    String? _bio,
    String? _accountID,
    String? _telp,
    String? _email,
  ){
    profilPicture = _profilPicture;
    nama = _nama;
    bio = _bio;
    accountID = _accountID;
    telp = _telp;
    email = _email;
  }
}