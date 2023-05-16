// Number 类型：包括 int 和 double
// String 类型：单引号、双引号、三引号
// bool 类型：true 和 false
// List 类型：有序数组
// Set 类型：无序集合
// Map 类型：字典
main() {
  // Number
  int i1 = 1;
  print(i1);
  int i2 = 0xF;
  print(i2);
  double d1 = 1.0;
  print(d1);

  // String
  String s1 = "s1";
  print(s1);
  String s2 = 's2';
  print(s2);
  String s3 = """s3
        s3
  """;
  print(s3);

  // bool
  print(true);
  print(false);

  // List
  List<int> l1 = <int>[1, 2, 3];
  l1.add(4);
  print(l1);
  List<String> l2 = <String>["one", "two", "three"];
  print(l2);
  List<int> l3 = List.filled(2, 5);
  // l3.add(55);   // 定长数组，超过 length 会 Cannot add to a fixed-length list
  print(l3); // output: [5, 5]

  // Set
  Set<int> set1 = <int>{1, 2, 3};
  print(set1);
  set1.add(3);
  set1.add(4);
  print(set1);

  // Map
  Map<int, String> map1 = <int, String>{
    1: "one",
    2: "two",
  };
  print(map1);
  map1[1] = "new_one";
  print(map1);
  map1[3] = "three";
  print(map1);
}
