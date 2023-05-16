import 'main.dart';

main() {
  print("main ");
  var person01 = Person("hanzhang", 29, "Shanghai");
  person01.name = "zhuzhu";
  print(person01.name);
  print(person01.age);
  print(person01.address);
  person01.address = "tongchuan";
  print(person01.address);
  person01.say();

  var person02 = Person("lami", 10, "Shanghai");
  // 39
  print(person01 + person02);

  Student student01 = Student("hanzhang", 29, "tongchuan", 99);
  print(student01.address);
  student01.say();

  Action action01 = Tank();
  print(action01.move());
  print(action01.say());
}
