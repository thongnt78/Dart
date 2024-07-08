/*
kiểu mixin là kiểu chuyên dùng để cung cấp các thuộc tính hoặc phương thức , chức năng cho rất nhiều các kiểu các lớp khác nhau muốn
sử dụng mà không cần kế thừa
không được phép tạo đối tượng
Chỉ cung cấp được các thuộc tính, giá trị dữ Liệu, hành động
Không hỗ trợ các keyword extend và các constructor( hàm khởi tạo)
 */

abstract mixin class AA {
  num sub(num a, num b);
}

class B with AA {
  @override
  num sub(num a, num b) {
    return a - b;
  }
}

mixin Printer {
  void printWithPrecision(double n, int precision) =>
      print(n.toStringAsFixed(precision));
}
mixin MX1 {
  int x = 1;

  void print() {}
}
mixin MX2 {
  String y = 'NT';

  void sum(int a, int b) => a + b;
}

class father with Printer, MX1, MX2 {
  void methodFather() {
    x = 5;
    printWithPrecision(2.2222222, x);
    sum(x, 5);
  }
}

void main() {
  var fd = father();
  print(fd.x);
  print(fd.y);
  fd.printWithPrecision(2.22222222222, fd.x);

  var a = B();
  print(a.sub(5, 2));
}
