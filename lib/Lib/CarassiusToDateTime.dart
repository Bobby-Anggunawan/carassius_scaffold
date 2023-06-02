/// berisi berbagai fungsi untuk mengkonvert data ke datetime
class CarassiusToDateTime{
  static DateTime? parseFromStringOrNull(String? source){
    if(source == null) return null;

    return DateTime.parse(source);
  }
}