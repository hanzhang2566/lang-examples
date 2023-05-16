main() {
  int i1 = getData(123);
  print(i1);
  String s1 = getData("123");
  print(s1);

  Person<String> person01 = Person("package");
  print(person01.data);
  person01.data = "new_package";
  print(person01.data);
  print(person01.move());
}

// 泛型方法
T getData<T>(T value) {
  return value;
}

// 泛型类
class Person<T> extends Action<T> {
  T _data;

  Person(this._data);

  T get data => this._data;

  set data(T value) => this._data = value;

  @override
  T move() {
    return _data;
  }
}

// 泛型接口
abstract class Action<T> {
  T move();
}
