import 'package:carassius_scaffold/UIStyle/CarassiusGetter.dart';
import 'package:flutter/material.dart';

class CarassiusForbiddenPage extends StatelessWidget {
  const CarassiusForbiddenPage({Key? key, required this.pesan}) : super(key: key);

  /// **Boleh null**.
  ///
  /// Pesan yang ingin ditampilkan ke user. Bisa berupa alasan kenapa user tidak diijinkan mengakses halaman ini
  final String? pesan;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(CarassiusGetter.padding().getAutoPadding(context)),
          child: Container(
            decoration: CarassiusGetter.boxDecoration().materialColorSurfaceRoundedCorner(context),
            padding: EdgeInsets.all(CarassiusGetter.padding().getAutoPadding(context)),
            child: ListView(
              shrinkWrap: true,
              children: [
                Builder(builder: (context){
                  if(pesan == null){
                    return Text(
                      "Anda tidak bisa melihat halaman ini",
                      style: CarassiusGetter.themeText(context).displayLarge,
                      textAlign: TextAlign.center,
                    );
                  }
                  else{
                    return Text(
                      "Anda tidak bisa melihat halaman ini karena :",
                      style: CarassiusGetter.themeText(context).displayLarge,
                      textAlign: TextAlign.center,
                    );
                  }
                }),

                Builder(builder: (context){
                  if(pesan != null){
                    return Text(
                      pesan!,
                      style: CarassiusGetter.themeText(context).displaySmall,
                      textAlign: TextAlign.center,
                    );
                  }
                  else{
                    return SizedBox();
                  }
                }),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
