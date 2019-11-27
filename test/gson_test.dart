import 'dart:mirrors';

import 'package:gson/gson.dart';
import 'package:test/test.dart';

class Foo {
  String foo;
}

void main() {
  test('calculate', () {
    String json = """
    {"foo": "Hello from foo"}
    """;
    var foo = Gson().fromJson(json, reflectClass(Foo)) as Foo;
    print(foo.foo);
  });
}
