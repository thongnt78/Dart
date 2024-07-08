// asynchronous programming with future
/*
-Lập trình bất đồng bộ là hoạt động cho phép chương trình thực hiện tiếp các công việc mà trong khi chờ các công việc khác vẫn đang trong qúa trình hoàn thành.
Lập trình bất đồng bộ dùng khi :
+ Lấy dữ liệu từ Server, Firestore
+ Ghi, update vào database
+ Đọc nội dung từ file

Các từ khoá dùng trong lập trình bất đồng bộ : Future, async, await.

--Khái niệm Future

Future là kết quả trả về của hoạt động bất đồng bộ. Future có hai trạng thái là : hoàn thành và chưa hoàn thành.

Future hoàn thành : Khi hoạt động bất đồng bộ thực hiện xong, lúc đó future ở trạng thái hoàn thành và trả về một giá trị hoặc một lỗi.

Future chưa hoàn thành: Khi hoạt động đồng bộ được gọi nó sẽ trả về một Future chưa hoàn thành.


+ Future : dùng cho kiểu dữ liệu trả về.
+ async : được đặt trước khối chứa await, nó đánh dấu là bất đồng bộ.
+ await : được đặt bên trong async và đặt ở trước các phương thức thực hiện việc load dữ liệu, hay ghi, update vào database..
*/

/*
Ví dụ :

 Future<String> TaiXe() {
  //return Future.delayed(Duration(seconds: 2), () => 'Đã có tài xế' );
  return Future.delayed(
      Duration(seconds: 2), () => throw Exception('Không tìm thấy tài xế.'));
}

Future<String> goiTaiXe() async {
  var taixe = await TaiXe();
  return taixe;
}

// void main()
// {
//   print('Đang tìm kiếm tài xế...');
//   var goitaixe = goiTaiXe();
//   print('Đang gọi tài xế...');
//   goitaixe.then((result) => print(result), onError: (err) => print(err));
//
// }

Future<void> main() async {
  print('Đang tìm kiếm tài xế...');
  print('Đang gọi tài xế...');
  try {
    var goitaixe = await goiTaiXe();
    print(goitaixe);
  } catch (err) {
    print(err);
  }
}*/
//đọc file bằng bất đồng bộ
import 'dart:io';

const fileName = 'fileName.txt';

// Future<void> main() async {
//   print('Đang đọc dữ liệu từ file...');
//   var data = await readFileAsync();
//   print(data);
//   print('Đã đọc xong!!');
// }
void main(){
  print('Đang đọc dữ liệu từ file...');
  readFileAsync().then((data)=>print(data));

}
Future<String> readFileAsync() async {
  var file = File(fileName);
  var content =await file.readAsStringSync();
  return Future.delayed(Duration(seconds: 2), () => content.trim());
}