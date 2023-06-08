import 'package:flutter/material.dart';

import '../../../UIStyle/CarassiusGetter.dart';
import '../../../data/model/Pages/ReadyToUse/AccountInfoPage/CarAccountInfoPage/AccountInfo.dart';

class CarAccountInfoPageLandscape extends StatelessWidget {
  const CarAccountInfoPageLandscape({Key? key, required this.accountInfo, required this.logOut}) : super(key: key);

  final AccountInfo accountInfo;

  final Function logOut;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Material(
          type: MaterialType.card,
          elevation: 5,
          child: Container(
            width: 500,
            height: 200,
            child: Stack(
              children: [

                Padding(
                  padding: EdgeInsets.all(CarassiusGetter.padding().portraitPadding),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Builder(builder: (context){
                      if(accountInfo.accountID != null){
                        return Text(
                          "#"+accountInfo.accountID!,
                          style: CarassiusGetter.themeText(context).bodySmall!.apply(color: CarassiusGetter.themeColor(context).onSurfaceVariant),
                        );
                      }
                      return SizedBox();
                    }),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(CarassiusGetter.padding().landscapePadding),
                  child: Row(
                    children: [
                      Builder(builder: (context){
                        if(accountInfo.profilPicture != null){
                          return Expanded(
                              child: Center(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: accountInfo.profilPicture,
                                ),
                              )
                          );
                        }
                        return SizedBox();
                      }),
                      Expanded(
                          flex: 3,
                          child: Container(
                            padding: EdgeInsets.only(left: CarassiusGetter.padding().landscapePadding),
                            child: Flex(
                              direction: Axis.vertical,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Builder(builder: (context){
                                  if(accountInfo.nama != null){
                                    return Text(
                                      accountInfo.nama!,
                                      style: CarassiusGetter.themeText(context).titleLarge,
                                    );
                                  }
                                  return SizedBox();
                                }),
                                Builder(builder: (context){
                                  if(accountInfo.bio != null){
                                    return Text(
                                      accountInfo.bio!,
                                      style: CarassiusGetter.themeText(context).bodySmall,
                                    );
                                  }
                                  return SizedBox();
                                }),

                                Padding(padding: EdgeInsets.only(top: CarassiusGetter.padding().portraitPadding)),

                                Builder(builder: (context){
                                  if(accountInfo.email != null){
                                    return Text(
                                      accountInfo.email!,
                                      style: CarassiusGetter.themeText(context).bodyMedium,
                                    );
                                  }
                                  return SizedBox();
                                }),
                                Builder(builder: (context){
                                  if(accountInfo.telp != null){
                                    return Text(
                                      accountInfo.telp!,
                                      style: CarassiusGetter.themeText(context).bodyMedium,
                                    );
                                  }
                                  return SizedBox();
                                }),

                                Padding(padding: EdgeInsets.only(top: CarassiusGetter.padding().portraitPadding)),

                                FilledButton.icon(
                                    onPressed: (){
                                      logOut();
                                    },
                                    label: Text("Log Out"),
                                  icon: Icon(Icons.logout),
                                )
                              ],
                            ),
                          )
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
