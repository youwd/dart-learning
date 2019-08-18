add(int a, int b) {
  return a + b;
}

main() {
  print(add(1, 2));

  int x = 1;
  double y = 1.1;
  print('123${x}he${y.round()}');

  /**多行字符串 */
  String s = """123123
multi-line string.""";
  print(s);

  /**List 与 Map */
  var arr1 = <String>["tom", "andy"];
  var arr2 = List<num>.of([1, 2, 3]);
  arr2.add(12.1);
  arr2.forEach((v) => {print(v)});
  arr1.add("you");
  arr1.forEach((q) => {print(q)});

  // var map1 = {"name": "tom"};
  var map2 = new Map<String, String>();
  map2['name'] = 'mapyou';
  // map2['age'] = 2;
  print(map2['name']);

  /**常量定义 const final*/
  const const_1 = 1;
  var const_x_1 = 70;
  var const_x_2 = 30;
  // const const_2 = const_x_1 + const_x_2;  //报错，因为const必须在编译时就确定
  final final_1 = const_1 + const_x_1;

}
