main() async {
  // 使用 Future
  success();
  error();

  // 使用 async
  print(getVersion());
  print(checkVersion());

  // await 表达式会对代码造成阻塞，直至异步操作完成
  // await 表达式必须放入 async 函数体内才能使用
  await Future(() => {print('request success')});
  print('test');

  futureChain();
  awaitChain();
}

void success() {
  final request = Future<String>(() => 'request success');
  print(request);

  request.then((value) => print(value));
}

void error() {
  final request = Future<String>(() {
    throw new FormatException('Expected at least 1 section');
  });
  request.then((value) => print('success'), onError: (error) => print(error));
  print(request);
}

// async 用来声明一个异步方法，返回 Future 对象
Future<String> getVersion() async {
  return 'v1.0';
}

checkVersion() async => true;

// 每个异步操作都需要等待上个异步操作完成后才可进行，异步回调 then() 方法是个链式操作
void futureChain() {
  Future<String>(() => 'request1').then((res) {
    print(res);
    return Future<String>(() => 'request2');
  }).then((res) {
    print(res);
    return Future<String>(() => 'request3');
  }).then(print);
}

// await 可以让这些连续的异步操作变得更加可读，看来起来就像是同步操作
void awaitChain() async {
  final res1 = await Future<String>(() => 'request1');
  print(res1);

  final res2 = await Future<String>(() => 'request2');
  print(res2);

  // 使用catchError来捕获Future的异常
  final res3 = await Future<String>(() => 'request3').catchError(print);
  print(res3);
}
