void main(){
//var x = name('NT', 'HT');
var x1 = name(name1: 'NMT', name2: 'PLHT');
var x2 = name.newName1({
   'NT':'Thong',
  'HT':'Tran'
});
print('${x1.name1},${x1.name2}');
print('${x2.name1},${x2.name2}');
}
class name {
  String? name1;
  String? name2;
  //Gán giá trị cho đối tượng
              //name(this.name1,this.name2);
  // bắt buộc phải gán giá trị cho đối tượng
  name({required this.name1,required this.name2});
  //đặt tên cho class
  name.newName()
  :   name1 = 'DH52201516',
      name2 = 'DH52201604';

  //sử dụng map
  name.newName1(Map<String,String> map)
  : name1 = map['NT'],
    name2 = map['HT'];
}