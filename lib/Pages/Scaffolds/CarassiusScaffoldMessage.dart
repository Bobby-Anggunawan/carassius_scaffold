import 'package:carassius_scaffold/UIStyle/Widget/CUISnackbarMaterial.dart';
import 'package:flutter/cupertino.dart';

/// scaffold ini berfungsi untuk menampilkan snackbar berisi pesan jika ada pesan yang ingin disampaikan
class CarassiusScaffoldMessage extends StatelessWidget {
  const CarassiusScaffoldMessage({Key? key, required this.main, required this.pesan, this.customMessageFungction}) : super(key: key);

  /// widget yang ditampilkan kalau **[isLoading] == false**
  final Widget main;

  /// pesan yang ingin disampaikan, Kalau tidak null, scaffild ini akan menampilkan pesan ini. Klaau null, tidak ada yang ditampilkan
  final String? pesan;

  /// secara default, scaffold ini akan menampilkan pesan dengan CUISnackbarMaterial(). isi fungsi ini jika ingin menggunakan metode lain dalam menampilkan pesan
  final Function(String)? customMessageFungction;

  @override
  Widget build(BuildContext context) {

    return FutureBuilder(
      future: Future.delayed(const Duration(milliseconds: 500), () {
        if(pesan!=null){
          if(customMessageFungction!=null){
            customMessageFungction!(pesan!);
          }
          else{
            CUISnackbarMaterial(context, pesan!);
          }
        }
      }),

      builder: (BuildContext context, AsyncSnapshot<Null> snapshot) {
        return main;
      },
    );
  }
}
