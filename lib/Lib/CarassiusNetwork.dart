import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../data/model/Lib/CarassiusNetwork/BaseRequestBody.dart';
import '../data/model/Lib/CarassiusNetwork/BaseRequestHeader.dart';
import '../data/model/Lib/CarassiusNetwork/BaseRequestUriParam.dart';
import '../data/model/Lib/CarassiusNetwork/RequestMethod.dart';


/// class ini berfungsi untuk melakukan request ke api cuma dengan 1 baris kode.
/// Dependency package https://pub.dev/packages/http
///
/// Gunakan fungsi baseRequest() untuk melakukan request dasar
class CarassiusNetwork{

  /// Melakukan request dan mengembalikan result sebagai class dynamic (sudah diconvert dengan fungsi jsonDecode()).
  ///
  /// **Note**
  /// untuk menggunakan nilai dari hasil request fungsi ini, akses sebagai map, misalnya:
  ///
  /// var result = CarassiusNetwork.baseRequest();
  ///
  /// result["data"][0]["nama"]
  ///
  /// **Parameter**
  /// * url: url yang digunakan untuk request misalnya https://example.com/api/test
  /// * uriParam: untuk memasukkan parameter ke uri request ini. Misalnya https://example.com/api/test?name=Clara?age=7. Gunakan fungsi BaseRequestUriParam().addKey() untuk menambah key
  /// * method: metode request yang ingin digunakan (get, post, put, dll)
  /// * header: isi header dari request ini. Gunakan fungsi BaseRequestHeader().addKey() untuk menambah key ke header ini
  /// * body: isi body dari request ini(dengan tipe form). Gunakan fungsi BaseRequestBody().addKey() untuk menambah key ke body ini
  /// * bodyRaw<optional>: kalau isi body bukan form, gunakan parameter bodyRaw untuk mengisi data body request ini(dalam string, tidak bisa mengirim file)
  static Future<dynamic> baseRequest(String url, BaseRequestUriParam? uriParam, RequestMethod method, BaseRequestHeader? header, BaseRequestBody? body, {String? bodyRaw = null})async{
    late Request request;
    if(uriParam != null){
      request = http.Request(method.name, Uri.parse(url+uriParam.uriParam));
    }
    else{
      request = http.Request(method.name, Uri.parse(url));
    }

    if(body!=null) request.bodyFields = body.body;
    else if(bodyRaw != null) request.body = bodyRaw;

    if(header!=null) request.headers.addAll(header.header);

    http.StreamedResponse response = await request.send();
    var ret = await response.stream.bytesToString();
    if(response.statusCode == 200){
      try{
        return jsonDecode(ret);
      }
      catch(e){
        return ret;
      }
    }

    //kalo respons error, dia return null
    else{
      return null;
    }
  }
}