// Dart 是单线程的，任务采用事件循环调度，Dart异常并不会导致应用程序崩溃，取而代之的是当前事件后续的代码不会被执行了。
// 好处是异常不会导致闪退，用户还可以继续使用核心功能
// 坏处是这些异常可能没有明显的提示和异常表现，排查困难
main() {
  String str = "a";
  try {
    int num = conv(str);
    print(num);
    // on 捕获某类异常，catch 捕获异常对象
  } on FormatException catch (e) {
    // 匹配不到 FormatException 会继续匹配
    print("FormatException err");
    rethrow; // 重新抛出
  } on Exception {
    print("Exception err");
  } finally {
    print("finally");
  }
}

int conv(String str) {
  throw FormatException("conv err");
}
