import 'package:rd_core/rd_core.dart';

class MyModule extends Module {
  @override
  late final Symbol key;
  @override
  String getName() {
    return key.toString();
  }

  @override
  Future<void> init() {
    print("ahihi");
    return Future.value();
  }

  MyModule({String name = 'MyModule'}) {
    key = Symbol(name);
    init();
  }

  void eat() {
    print("let eat");
  }
}

void main() {
  var awesome = MyModule();
  print('awesome: ${awesome.getName()}');
}
