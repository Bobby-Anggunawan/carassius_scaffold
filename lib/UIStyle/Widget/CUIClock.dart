import 'package:carassius_scaffold/Lib/CarassiusConvertDateTime.dart';
import "package:flutter/material.dart";
import 'dart:async';

class CUIClock extends StatefulWidget {
  const CUIClock({Key? key, this.textStyle}) : super(key: key);

  final TextStyle? textStyle;

  @override
  State<CUIClock> createState() => _CUIClockState();
}

class _CUIClockState extends State<CUIClock> {

  Timer? _timer;

  @override
  Widget build(BuildContext context) {

    if(_timer == null){
      _timer = Timer.periodic(Duration(seconds: 1), (timer) {
        if(context.mounted){
          setState(() {});
        }
      });
    }

    return Text(
      CarassiusConvertDateTime.toStringJustTime(DateTime.now(), true).toString(),
      style: widget.textStyle,
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    _timer?.cancel();
    _timer = null;
  }
}
