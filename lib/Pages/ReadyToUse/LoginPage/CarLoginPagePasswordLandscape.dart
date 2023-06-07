import 'package:carassius_scaffold/Pages/ReadyToUse/LoginPage/CarLoginPageViewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CarLoginPagePasswordLandscape extends StatefulWidget {
  const CarLoginPagePasswordLandscape({Key? key, required this.pageTitle, required this.linkToOtherPage, required this.loginFunction, required this.backgroundImageResourcePath}) : super(key: key);

  final String? backgroundImageResourcePath;

  final String pageTitle;

  final Function(String username, String password) loginFunction;

  final Widget? linkToOtherPage;

  @override
  State<CarLoginPagePasswordLandscape> createState() => _CarLoginPagePasswordLandscapeState();
}

class _CarLoginPagePasswordLandscapeState extends State<CarLoginPagePasswordLandscape> {

  FocusNode passFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Consumer<CarLoginPageViewModel>(
        builder: (context, myViewModel, child){
          return Scaffold(
            body: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,

                  decoration: widget.backgroundImageResourcePath != null ? BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(widget.backgroundImageResourcePath!),
                    ),
                  ) : null,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            Center(
                              child: Text(
                                widget.pageTitle,
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            Builder(builder: (cntx){
                              if(myViewModel.pesanError!=null){
                                return Text(
                                  myViewModel.pesanError!,
                                  style: TextStyle(
                                      color: Colors.red
                                  ),
                                );
                              }
                              return Container();
                            }),
                            Padding(padding: EdgeInsets.only(top: 20)),
                            TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: "Username"),
                              onChanged: (text) => setState(() {
                                myViewModel.username = text;
                              }),
                              onSubmitted: (text){
                                passFocus.requestFocus();
                              },
                            ),
                            Padding(padding: EdgeInsets.only(top: 20)),
                            TextField(
                              focusNode: passFocus,
                              obscureText: myViewModel.isPasswordHidden,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "Password",
                                suffixIcon: IconButton(
                                  icon: Icon(myViewModel.isPasswordHidden ? Icons.visibility_off : Icons.visibility),
                                  onPressed: () {
                                    myViewModel.isPasswordHidden = !myViewModel.isPasswordHidden;
                                  },
                                )
                              ),
                              onChanged: (text) => setState(() {
                                myViewModel.password = text;
                              }),
                              onSubmitted: (text){
                                if(myViewModel.username == null || myViewModel.password == null){
                                  //ugiugui
                                  myViewModel.pesanError = "Username dan password tidak boleh kosong";
                                }
                                else{
                                  widget.loginFunction(myViewModel.username!, myViewModel.password!);
                                }
                              },

                            ),
                            Padding(padding: EdgeInsets.only(top: 30)),
                            FilledButton(
                                onPressed: (){
                                  if(myViewModel.username == null || myViewModel.password == null){
                                    //ugiugui
                                    myViewModel.pesanError = "Username dan password tidak boleh kosong";
                                  }
                                  else{
                                    widget.loginFunction(myViewModel.username!, myViewModel.password!);
                                  }
                                },
                                child: Text(widget.pageTitle)
                            ),

                            Padding(padding: EdgeInsets.only(top: 30)),

                            Builder(builder: (cntx){
                              if(widget.linkToOtherPage != null){
                                return widget.linkToOtherPage!;
                              }

                              return SizedBox();
                            })
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        }
    );
  }
}
