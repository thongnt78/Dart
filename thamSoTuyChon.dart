void  main(){
  goOut('Thông', 'Trân');
goOut('Thông', 'Trân', 'Xe máy');
}
void goOut(String who, String where, [String? by]){
  var result = '$who go to $where';
  if(by != null){
    result = '$who go to $where by $by';
  }
  print(result);
}
//tham số được đặt tên
void doSomeThing(int x,{String y = ''}){

}