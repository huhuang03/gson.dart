import 'dart:mirrors';

class Gson {
  dynamic fromJson(String json, ClassMirror clazz) {
    var rst = clazz.newInstance(Symbol(""), []);
    
    return rst.reflectee;
  }
}