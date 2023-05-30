/// class berisi berbagai metode untuk mengkonversi berbagai tipe data lain ke stringt dengan format tertentu
class CarassiusToString{
  /// misalnya string "IkanAsin" bakal diubah jadi "Ikan Asin"(ditambah spasi).
  /// Berguna misalnya punya enum {BaksoBakar, IkanAsin, BakpauDaging} terus ingin menampilkan isi enum pakai foreach
  String addSpaceBetweenEachCapital(String valueToAddSpace){
    String ret = "";
    valueToAddSpace.split('').forEach((ch){
      ret = ret+ch;
      if(ret != ""){
        // cek apa char ini kapital
        if(valueToAddSpace != valueToAddSpace.toUpperCase()){
          ret = ret+" ";
        }
      }
    });

    return ret;
  }
}