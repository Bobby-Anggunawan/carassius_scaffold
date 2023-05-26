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
        child: Container(
          decoration: CarassiusGetter.boxDecoration().materialColorSurfaceRoundedCorner(context),
          child: Flex(
            direction: Axis.vertical,
            mainAxisSize: MainAxisSize.min,
            children: [
              Builder(builder: (context){
                if(pesan == null){
                  return Text(
                    "Anda tidak bisa melihat halaman ini",
                    style: CarassiusGetter.themeText(context).displayLarge,
                  );
                }
                else{
                  return Text(
                    "Anda tidak bisa melihat halaman ini karena :",
                    style: CarassiusGetter.themeText(context).displayLarge,
                  );
                }
              }),

              Builder(builder: (context){
                if(pesan != null){
                  return Text(
                    pesan!,
                    style: CarassiusGetter.themeText(context).displaySmall,
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
    );
  }
}
