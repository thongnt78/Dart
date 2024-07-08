void main(){
  //có thể lưu nhiều phần tử giống List nhưng các phần tử ở bên trong KHÔNG ĐƯỢC TRÙNG LẶP NHAU
  //cú pháp dùng dấu {} để chứa các phần tử
  // định nghĩa: var name = <datatype>{}; ---- thêm phần tử name.add(data);
  var numbers = {1,2,3,4,5,6,7,1,2,3};
  for(var number in numbers)
    print(number);
}
