import 'package:flutter/material.dart';
import 'CarassiusGetter.dart';

class CarassiusDecoration{

  BoxDecoration materialColorPrimaryRoundedCorner(BuildContext context, {double borderRadius = 10}){
    return BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: CarassiusGetter.themeColor(context).primary
    );
  }

  BoxDecoration materialColorSecondaryRoundedCorner(BuildContext context, {double borderRadius = 10}){
    return BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: CarassiusGetter.themeColor(context).secondary
    );
  }

  BoxDecoration materialColorSurfaceRoundedCorner(BuildContext context, {double borderRadius = 10}){
    return BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: CarassiusGetter.themeColor(context).surface
    );
  }

  /// note, sebaiknya gunakan [roundedCornerColorSurface]
  BoxDecoration colorWhiteRoundedCorner({double borderRadius = 10}){
    return BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: Colors.white
    );
  }

  BoxDecoration colorBlackRoundedCorner({double borderRadius = 10}){
    return BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: Colors.black
    );
  }

  /// agrument [opacity] diisi dengan nilai dari 0 sampi 1, defaultnya adalah 0.6
  BoxDecoration transparanWhite({double opacity = 0.6, double borderRadius = 0}){
    return BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: Colors.white.withOpacity(opacity),
    );
  }

  /// agrument [opacity] diisi dengan nilai dari 0 sampi 1, defaultnya adalah 0.6
  BoxDecoration transparanBlack({double opacity = 0.6, double borderRadius = 0}){
    return BoxDecoration(
      borderRadius: BorderRadius.circular(borderRadius),
      color: Colors.white.withOpacity(opacity),
    );
  }

  /// biasanya digunakan untuk latar belakang dialog box(warna hitam transparan)
  /// agrument [opacity] diisi dengan nilai dari 0 sampi 1, defaultnya adalah 0.6
  /// **Note** warna scrim sebenarnya tidak transparan. Nilai transparan harus dimasukkan sendiri. Jadi value default 0.6 bukan saran dari material design
  BoxDecoration materialTransparanScrim(BuildContext context, {double opacity = 0.6, double borderRadius = 0}){
    return BoxDecoration(
      borderRadius: BorderRadius.circular(borderRadius),
      color: CarassiusGetter.themeColor(context).scrim.withOpacity(opacity),
    );
  }

  /// agrument [shadowOpacity] diisi dengan nilai dari 0 sampi 1, defaultnya adalah 0.5. Kalau nilainya 0, bayangan jadi hitam pekat
  BoxDecoration withShadowWhiteContainer({double shadowOpacity = 0.5, double borderRadius = 10}){
    return BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(shadowOpacity), //color of shadow
            spreadRadius: 5, //spread radius
            blurRadius: 7, // blur radius
            offset: Offset(0, 2), // changes position of shadow
            //first paramerter of offset is left-right
            //second parameter is top to down
          )
        ]
    );
  }

  /// agrument [shadowOpacity] diisi dengan nilai dari 0 sampi 1, defaultnya adalah 0.5. Kalau nilainya 0, bayangan jadi hitam pekat
  BoxDecoration withShadowBlackContainer({double shadowOpacity = 0.5, double borderRadius = 10}){
    return BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: Colors.black,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(shadowOpacity), //color of shadow
            spreadRadius: 5, //spread radius
            blurRadius: 7, // blur radius
            offset: Offset(0, 2), // changes position of shadow
            //first paramerter of offset is left-right
            //second parameter is top to down
          )
        ]
    );
  }

  BoxDecoration borderAll({double borderWidth = 1}){
    return BoxDecoration(
        border: Border.all(width: borderWidth)
    );
  }
}