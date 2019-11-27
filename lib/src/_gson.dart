import 'dart:mirrors';

class Gson {
  dynamic fromJson(String json, ClassMirror clazz) {
    var rst = clazz.newInstance(clazz.simpleName, []);
    return rst.reflectee;
  }
}