class ShowWhenNegativeOrPositive{
  late String ifNegative;
  late String ifPositive;

  String getResult(int value){
    if(value.isNegative){
      return ifNegative;
    }
    return ifPositive;
  }

  ShowWhenNegativeOrPositive(String _ifNegative, String _ifPositive){
    ifNegative = _ifNegative;
    ifPositive = _ifPositive;
  }
}