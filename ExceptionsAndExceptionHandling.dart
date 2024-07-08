/*
- Ngoại lệ là những thứ sẽ xảy ra khi chương trình đang hoạt động

 */

//Các ví dụ về ngọại lệ

/*void main(){
//  var a = int.parse('source');
//   var x = 100;
//   var y = 0;
//   print(x ~/ y);
  var printer = MyPrinter();
  printer.printSomething(1.23);
}
abstract class Printer {
  void printSomething(double values);
}
class MyPrinter extends Printer {
  @override
  void printSomething(double values) {
    // TODO: implement printSomething
    throw Exception('Phương thức chưa được triển khai');
  }
}*/

//Các phương pháp xử lý ngoại lệ

/*void main() {
  try {
    var a = int.parse('source');
  } on FormatException {}


  var x = 100;
  var y = 0;
  try {
    print(x ~/ y);
  } catch(e,stackTrare){
    print('\nKhông thể chia lấy nguyên cho số 0');
    print(e); // hiển thị tên lỗi
    print(stackTrare); // hiển thị thông số của lỗi và vị trị của lỗi
  }


  var printer = MyPrinter();
  try {
    printer.printSomething(1.23);
  }
  on Exception{}
  
  print('Kết thúc chương trình!!!');
}

abstract class Printer {
  void printSomething(double values);
}

class MyPrinter extends Printer {
  @override
  void printSomething(double values) {
    // TODO: implement printSomething
    throw Exception('Phương thức chưa được triển khai');
  }
}*/

// trình tự bắt ngoại lệ phải từ chi tiết đến tổng quát

/*void main() {
  try {
    var a = int.parse('source');
  } on FormatException {
    print('Chuỗi kí tự chỉ được chứa các con số!!');
  } on Exception{
    print('Ngoại lệ chưa biết tên');
  } catch(e){
    print('Chuỗi kí tự không thể chuyển đổi sang kiểu số!');
  }
}*/

// ném lại ngoại lệ
import 'dart:io';

void main(){
  // xử lý ném lại
  int a = 100;
  int b = 0;
  try {
    div(a,b);
  }catch(e){
    while(b == 0)
      {
        print('Nhập lại mẫu số khác 0: ');
        b = int.parse(stdin.readLineSync()!);
      }
    div(a, b);
  } finally{
    print('Dọn dẹp và giải phóng tài nguyên');//luôn được chạy cho dù ngoại lệ có xảy ra hay không
  }

}

void div(int a , int b){
  try {
  print(a ~/ b);
  } on UnsupportedError {
    print('Mẫu số bằng 0, không thể chia');
    rethrow; // key ném lại ngoại lệ
  }
}