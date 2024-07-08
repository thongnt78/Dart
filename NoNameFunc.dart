void main() {
  var friends = ['Thông', 'Trinh', 'Quí', 'Kha', 'Khanh'];
  // friends
  //     .map((e) => e.toUpperCase())
  //     .forEach((element) => print('$element : ${element.length}'));

  // var x = (e) => e.toUpperCase();
  // var item = (element) => print('$element : ${element.length}');
  // friends
  //     .map(x)
  //     .forEach(item);

  friends.map((e) {
    return e.toUpperCase();
  }).forEach((element) {
    print('$element : ${element.length}');
  });
}
// 3 cách viết về hàm vô danh
