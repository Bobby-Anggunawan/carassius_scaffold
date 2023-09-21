import 'package:carassius_scaffold/UIStyle/CarassiusGetter.dart';
import 'package:flutter/material.dart';

/// basic item untuk listview.
///
/// **Terdiri dari**:
/// * leading
/// * title dan subtitle disamping leading(subtitle dibawah title bertumpuk satu kolom)
/// * trailing disamping title dan subtitle
class CUIItemsListviewBasic extends StatelessWidget {
  const CUIItemsListviewBasic({Key? key, required this.leading, required this.title, required this.subtitle, required this.trailing}) : super(key: key);

  /// Judul item(posisinya di tengah sama subtitle)
  final String title;
  /// penjelasan item. letaknya dibawah title
  ///
  /// **OPTIONAL:** *Nilainya [null] saja jika tidak ingin menampilkan ini*
  final String? subtitle;

  /// Widget yang diletakkan di bagin paling kiri
  ///
  /// **OPTIONAL:** *Nilainya [null] saja jika tidak ingin menampilkan ini*
  final Widget? leading;

  /// Widget yang diletakkan paling kanan
  ///
  /// **OPTIONAL:** *Nilainya [null] saja jika tidak ingin menampilkan ini*
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: CarassiusGetter.padding().getAutoPadding(context),
        vertical: CarassiusGetter.padding().getAutoPadding(context)/2
      ),
      child: Row(
        children: [

          (leading != null ? leading! : Container()),

          Padding(padding: EdgeInsets.only(left: CarassiusGetter.padding().getAutoPadding(context))),


          Flexible(
              child: Wrap(
                children: [
                  Text(
                      title,
                      style: CarassiusGetter.themeText(context).titleMedium
                  ),
                  Row(),
                  (
                      subtitle!= null ? Text(
                          subtitle!,
                          style: CarassiusGetter.themeText(context).bodySmall
                      ) : SizedBox()
                  )
                ],
              )
          )

          /*
          Wrap(
            direction: Axis.vertical,
            children: [
              Text("ati"),
              Text(subtitle!)
            ],
          )*/,

          Padding(padding: EdgeInsets.only(left: CarassiusGetter.padding().getAutoPadding(context))),

          (trailing != null ? trailing! : Container()),
        ],
      ),
    );
  }
}
