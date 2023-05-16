// const 和 final
main() {
  // const: const变量是编译时常量，定义时必须赋值
  const String a = "a";
  // a = "aaaa"; // 编译报错
  const List l1 = [1, 2, 3];
  // list = [4, 5, 6, 7, 8, 9, 10]; // 编译报错
  print(l1);
  // list[0] = 100;  // 运行时：Cannot modify an unmodifiable list

  const String dupA = "a";
  print(dupA == a);   // 同值常量指向同一块内存地址

  // final: 比 const 要宽松，主要有 2 点区别：
  // 1. 声明和初始化可以分开
  // 2. 可以修改引用变量的值
  final List l2;
  l2 = [1, 2, 3];
  print(l2);
  l2[1] = 200;
  print(l2);
}
