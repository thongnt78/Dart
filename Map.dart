void main(){
  // map là một cặp bao gồm keys và values
  // cấu trúc map:  var name = Map<datatypeOfKeys,datatypeOfValues);
  var dic = {
    'One' : 1,
    'Two' : 2,
    'Three' : 3,
    'Four' : 4,
    'Five' : 5,
  };
  dic['Six'] = 6;
  //toàn bộ keys,values
  print('toàn bộ keys,values');
  for(var item in dic.entries)
    print(item);
  // duyệt keys
  print('toàn bộ keys');
  for(var item in dic.keys)
    print(item);
  // duyệt values
  print('toàn bộ values');
  for(var item in dic.values)
    print(item);
}