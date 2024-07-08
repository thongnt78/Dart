void main(){
//dùng để tạo ra các kiểu an toàn
//nếu có chức năng nào cần dùng cho nhiều danh sách chỉ khác kiểu dữ liệu nhưng mà phải cùng số lượng thì nên dùng hàm generic
var numbers = [1,2,3,4,5,6,7];
var name = ['NT','HT'];
var score = [9.6,9.9,9.5];
print(numbers);
print(name);
print(score);
}
void showInFoList<T>(List<T> item){
  for(var element in item)
    print('$element');
}
