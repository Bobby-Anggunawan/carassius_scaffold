import 'package:carassius_scaffold/UIStyle/CarassiusGetter.dart';
import 'package:flutter/material.dart';

void CUIDialogFullscreen(
    {required BuildContext context,
      required Function onConfirm,
      required String penjelasanDialog,
      required String judulDataDialog,
      required Widget content,
      String confirmButtonText = "Confirm",
      IconData confirmButtonIcon = Icons.edit}){
  showDialog(context: context, builder: (context){
    return Dialog.fullscreen(
      backgroundColor: CarassiusGetter.themeColor(context).primaryContainer,
      child: Padding(
        padding: EdgeInsets.all(CarassiusGetter.padding().getAutoPadding(context)),
        child: Column(
          children: [
            // bagian teratas (tombol tutup dan tombol simpan)
            Row(
              children: [
                IconButton(
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.close,
                      color: CarassiusGetter.themeColor(context).onPrimaryContainer,
                    )
                ),

                Expanded(child: Container()),

                TextButton.icon(
                  onPressed: (){
                    onConfirm();
                  },
                  style: ButtonStyle(
                      iconColor: MaterialStateProperty.resolveWith((states){
                        return CarassiusGetter.themeColor(context).onPrimaryContainer;
                      })
                  ),
                  label: Text(
                    confirmButtonText,
                    style: TextStyle(
                        color: CarassiusGetter.themeColor(context).onPrimaryContainer
                    ),
                  ),
                  icon: Icon(confirmButtonIcon),
                )
              ],
            ),

            Padding(padding: EdgeInsets.only(top: CarassiusGetter.padding().getAutoPadding(context))),

            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Padding(
                    padding: EdgeInsets.only(left: CarassiusGetter.padding().getAutoPadding(context)*3),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          penjelasanDialog.toUpperCase(),
                          style: CarassiusGetter.themeText(context).bodySmall?.apply(color: CarassiusGetter.themeColor(context).onPrimaryContainer),
                        ),

                        Padding(padding: EdgeInsets.only(top: CarassiusGetter.padding().portraitPadding/2)),

                        Text(
                          judulDataDialog,
                          style: CarassiusGetter.themeText(context).titleLarge?.apply(color: CarassiusGetter.themeColor(context).onPrimaryContainer,),
                        ),
                      ],
                    )
                ),

                Padding(padding: EdgeInsets.only(top: CarassiusGetter.padding().portraitPadding)),

                Divider(),
              ],
            ),

            Expanded(child: content)
          ],
        ),
      ),
    );
  });
}