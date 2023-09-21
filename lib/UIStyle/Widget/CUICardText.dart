import 'package:carassius_scaffold/UIStyle/CarassiusGetter.dart';
import 'package:flutter/material.dart';


/// terinspirasi dari material design.
///
/// jenis card yang hanya berisi text
///
/// **Komponen terdiri dari:**
/// * Judul
/// * Penjelasan
/// * Daftar tombol aksi
class CUICardText extends StatelessWidget {
  const CUICardText({Key? key, required this.title, required this.content, required this.action, this.actionButtonAlignment = WrapAlignment.end, this.width = null, this.badge = null, this.badgeAlignment = Alignment.topRight, this.elevation = 3}) : super(key: key);

  /// judul dari card ini
  final String title;
  /// isi dari card ini
  final String content;
  /// daftar tombol action yang ditampilkan dibawah content.
  ///
  /// **Note:** masukka *null* jika tidak ingin ada tombol dibawah card
  final List<TextButton>? action;

  /// apa action button di kiri, tengah atau kanan. Defaultnya kanan
  final WrapAlignment actionButtonAlignment;

  /// custom width untuk card. Kalau nilainya null width-nya akan menyesuaikan dengan child di dalamnya
  final double? width;

  /// **Optional**, Badge yang ditampilkan di card sebagai sejenis notifikasi
  final Badge? badge;

  /// lokasi [badge] kalau variabel [badge] diisi
  ///
  /// defaultnya **topRight**
  final Alignment? badgeAlignment;

  /// elevation(bayangan) card ini
  ///
  /// **Note:** Penjelasan elevation dapat dilihat dari https://m3.material.io/styles/elevation/applying-elevation
  final double elevation;

  @override
  Widget build(BuildContext context) {

    List<Widget> buildTitle = [];
    title.split(" ").forEach((element) {
      buildTitle.add(
          Text(
            element+" ",
            style: CarassiusGetter.themeText(context).headlineMedium,
          )
      );
    });

    List<Widget> buildContent = [];
    content.split(" ").forEach((element) {
      buildContent.add(Text(element+" "));
    });

    return Container(
      width: width,
      child: Material(
        type: MaterialType.card,
        elevation: elevation,
        borderRadius: BorderRadius.circular(CarassiusGetter.padding().getAutoPadding(context)),
        child: Padding(
          padding: EdgeInsets.all(CarassiusGetter.padding().getAutoPadding(context)),
          child: ListView(
            shrinkWrap: true,
            children: [
              Align(
                alignment: badgeAlignment ?? Alignment.topRight,
                child: (badge != null ? badge! : Container()),
              ),
              Wrap(
                children: buildTitle,
              ),
              Padding(padding: EdgeInsets.only(top: CarassiusGetter.padding().portraitPadding)),
              Wrap(
                children: buildContent,
              ),
              Padding(padding: EdgeInsets.only(top: CarassiusGetter.padding().portraitPadding)),
              Wrap(
                  children: action!=null ? action as List<Widget> : [],
                  alignment: actionButtonAlignment
              )
            ],
          ),
        ),
      ),
    );
  }
}
