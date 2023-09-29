/// class berisi fungsi fungsi tambahan untuk memanipulasi class List<T> di dart
///
/// **NOTE**, karena pakai type generic jadi tidak bisa static
class CarassiusList<T>{
  /// untuk menggabungkan 2 jenis list [start]+[end]
  ///
  /// ini dibuat karena aku sering kesulitan pakai list.generate di listview() karena tidak bisa menambahkan header di list.generate
  List<T> combineList(List<T> start, List<T> end){
    start.addAll(end);
    return start;
  }
}