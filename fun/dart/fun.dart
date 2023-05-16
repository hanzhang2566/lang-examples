// 可选参数函数、默认值参数、函数参数
// 匿名函数、函数嵌套、函数闭包

String func01() {
  return "hello, func01!";
}

// 只有一个表达式的函数简写
func02() => "hello, func02!";

// 使用 var 接收任意类型参数
String func03(var param) {
  print(param);
  return "func03";
}

// 命名方式的可选参数
String func04(var param, {var name, var age}) {
  return "${param}  ${name}  ${age}";
}

// 位置方式的可选参数
String func05(var param, [var name, var age]) {
  return "${param}  ${name}  ${age}";
}

// 命名方式的可选参数，带默认值
String func06(var param, {var name = "woshizhu", var age = 18}) {
  return "${param}  ${name}  ${age}";
}

// 位置方式的可选参数，带默认值
String func07(var param, [var name = "woshizhu", var age = 18]) {
  return "${param}  ${name}  ${age}";
}

// 函数参数
String func08(String name, Function func) {
  return func(name);
}

main() {
  print(func01());
  print(func02());
  print(func03(123));
  print(func03("hanzhang"));
  print(func03(true));
  print(func04("func04", name: "hanzhang", age: 28));
  print(func04("func04", age: 28));
  print(func05("func05", "hanzhang", 28));
  print(func05("func05", 28));
  print(func06("func06", name: "hanzhang", age: 28));
  print(func06("func06", age: 28));
  print(func07("func05", "hanzhang", 28));
  print(func07("func05", 28));
  print(func08("hanzhang", (name) => name));

  List<int> l1 = <int>[1, 2, 3];
  l1.forEach((element) {
    print(element + 10);
  });
}
