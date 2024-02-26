// đặc tả 1 đối tượng với 1 định danh duy nhất
abstract class CoreCC {
  abstract final Symbol key;
}

// Đặc tả mô tả lớp tính năng
abstract class Module extends CoreCC {
  String getName();

  Future<dynamic> init() {
    return Future.value();
  }

  Future<dynamic> dispose() {
    return Future.value();
  }
}

// Đặc tả lớp đối tượng
abstract class Model extends CoreCC {
  Model copyWith();
}

// Đặc tả mô tả lớp khai báo
abstract class Configuration extends CoreCC {
  abstract final Set<Map<String, dynamic>> config;
  dynamic getConfig();
  void setConfig(dynamic v);
  void mergeConfig(Set<Map<String, dynamic>> cfg);
}

// đặc tả mô tả lớp lưu trữ
abstract class Storage extends CoreCC {
  dynamic getV(dynamic key);
  Future<dynamic> getAsyncV(dynamic key);
  void setV(dynamic key, dynamic value);
  Future<void> setAsyncV(dynamic key, dynamic value);
  Future<void> clearAll();
}
