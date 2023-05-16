// 常量构造，保证对象不可变
// 继承抽象类，只用实现抽象方法；而实现抽象类则要重写全部方法
main() {
  var person1 = new Person("hanzhang1", 28, "Shanghai");
  print(person1);
  print(person1.name);
  print(person1.age);
  print(person1._address);

  // new 可以省略
  const point1 = Point(1, 2);
  print(point1);
  print(point1.x);
  print(point1.y);
  // point1.x = 1; // 编译错误
}

class Person {
  String name;
  int age;

  // 私有属性
  String _address;

  // 构造方法，不支持重载
  Person(this.name, this.age, this._address);

  void _say1() {
    print("$name, 是我");
  }

  void say() {
    print("$name, 是我的分身");
  }

  // 重写私有属性的 get 方法
  String get address => "China#" + this._address;

  // 重写私有属性的 set 方法
  set address(String address) => _address = address;

  // 重写运算符
  int operator +(Person other) => this.age + other.age;
}

// 1. 常量构造函数需以 const 关键字修饰;
// 2. const 构造函数必须用于成员变量都是final的类;
// 3. 构建常量实例必须使用定义的常量构造函数;
// 4. 如果实例化时不加const修饰符，则即使调用的是常量构造函数，实例化的对象也不是常量实例。
class Point {
  final int x;
  final int y;

  const Point(this.x, this.y);
}

class Logger {
  final String name;
  bool mute = false;

  static final Map<String, Logger> _cache = <String, Logger>{};

  factory Logger(String name) {
    if (_cache.containsKey(name)) {
    } else {
      final logger = new Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
    return new Logger._internal(name);
    ;
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) {
      print(msg);
    }
  }
}

// 1. 子类使用extends关键字来继承父类；
// 2. 子类会继承父类里可见的属性和方法，但是不会继承构造函数；
// 3. 子类能复写父类的方法getter和setter。
class Student extends Person {
  int score;

  // 构造
  Student(super.name, super.age, super.address, this.score);

  @override
  void say() {
    print("$name 的分数是 $score");
  }
}

// 定义接口
abstract class Action {
  String move();

  String say() {
    return "hello action";
  }
}

class Tank extends Action {
  @override
  String move() {
    return "tank moving.";
  }
}
