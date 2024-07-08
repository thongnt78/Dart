void main() {
// var friends = ['Kha','Qui','Khanh','Anh','Trinh'];
// var reversed = -friends;
// print(friends);
// print('============================');
// print(reversed);

  var slogans = ['Cau truc du lieu va giai thuat & lap trinh huong doi tuong'];
  //  print('Số lượng từ là: ${slogans.countSpace()}');
}

//đảo ngược thứ tự trong danh sách bằng extension
// extension myList<T> on List<T> {
//   List<T> operator -() => reversed.toList();
// }
//đếm số lượng từ
extension MyString on String {
  int countWord() {
    var count = 0;
    var words = this.split(' ');
    for (var word in words) if (word.isNotEmpty) count++;
    return count;
  }

//đếm số lượng dấu cách
  int countSpace() {
    var counter = 0;
    for (int i = 0; i < this.length; i++) if (this[i] == ' ') counter++;
    return counter;
  }
}
