import 'package:flutter/material.dart';

/// snackbar dari material design. UNtuk menyampaikan pesan ke ui
void CUISnackbarMaterial(BuildContext context, String pesan){
  var snackBar = SnackBar(
    content: Text(pesan),
  );

  // Find the ScaffoldMessenger in the widget tree
  // and use it to show a SnackBar.
  ScaffoldMessenger.of(context).showSnackBar(snackBar);

}
