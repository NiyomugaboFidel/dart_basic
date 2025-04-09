
# 🐦 Dart Programming Concepts – From Basics to Advanced

This guide is a complete roadmap to learning Dart, including all the essential concepts with simple code examples. It's ideal for beginners and those transitioning into Dart for Flutter development.

---

## 📌 Table of Contents

1. [Basics](#1-basics)
2. [Variables & Data Types](#2-variables--data-types)
3. [Operators](#3-operators)
4. [Control Flow](#4-control-flow)
5. [Functions](#5-functions)
6. [Object-Oriented Programming (OOP)](#6-object-oriented-programming-oop)
7. [Collections](#7-collections)
8. [Exception Handling](#8-exception-handling)
9. [Asynchronous Programming](#9-asynchronous-programming)
10. [Null Safety](#10-null-safety)
11. [Extensions & Utility Features](#11-extensions--utility-features)
12. [Libraries & Packages](#12-libraries--packages)
13. [Testing (Optional)](#13-testing-optional)

---

## 1. Basics

```dart
void main() {
  print('Hello, Dart!');
}
```

---

## 2. Variables & Data Types

```dart
void main() {
  int age = 25;
  double price = 99.99;
  String name = 'John';
  bool isAlive = true;
  dynamic anything = 'Can be any type';

  print('$name is $age years old. Price: \$${price}');
}
```

---

## 3. Operators

```dart
void main() {
  int a = 10, b = 5;

  print(a + b); // 15
  print(a > b); // true
  print(a == b); // false
  print(!(a == b)); // true
}
```

---

## 4. Control Flow

```dart
void main() {
  int num = 20;

  if (num % 2 == 0) {
    print("Even");
  } else {
    print("Odd");
  }

  for (int i = 0; i < 3; i++) {
    print("Count: $i");
  }
}
```

---

## 5. Functions

```dart
int add(int x, int y) => x + y;

void main() {
  print(add(3, 4)); // 7

  greet(name: "Alice");
}

void greet({String name = "Guest"}) {
  print("Hello, $name!");
}
```

---

## 6. Object-Oriented Programming (OOP)

```dart
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void introduce() {
    print("I'm $name, $age years old.");
  }
}

void main() {
  var p = Person("Sam", 30);
  p.introduce();
}
```

---

## 7. Collections

```dart
void main() {
  List<String> fruits = ['Apple', 'Banana', 'Mango'];
  Set<int> uniqueNumbers = {1, 2, 3, 3};
  Map<String, int> scores = {'Math': 90, 'Science': 85};

  print(fruits[0]); // Apple
  print(uniqueNumbers); // {1, 2, 3}
  print(scores['Math']); // 90
}
```

---

## 8. Exception Handling

```dart
void main() {
  try {
    int result = 10 ~/ 0;
    print(result);
  } catch (e) {
    print("Error: $e");
  } finally {
    print("Cleanup done.");
  }
}
```

---

## 9. Asynchronous Programming

```dart
Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 1));
  return 'Data loaded';
}

void main() async {
  print('Loading...');
  String data = await fetchData();
  print(data);
}
```
## 9.1 fetch data in dart
``` dart
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

void main() async {
  await fetchData();
}

Future<void> fetchData() async {

  var url = Uri.https('jsonplaceholder.typicode.com', '/posts/1');

  final response = await http.get(url);
  if (response.statusCode == 200) {
    Map<String, dynamic>  data = convert.jsonDecode(response.body);
    print(data['title']);
    print(data['body']);
    print(data['userId']);
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}
```
---

## 10. Null Safety

```dart
void main() {
  String? name;
  print(name?.length); // null

  int? age;
  print(age ?? 0); // fallback to 0
}
```

---

## 11. Extensions & Utility Features

### ✅ Extension Method

```dart
extension StringExtension on String {
  String toCapitalized() =>
      this[0].toUpperCase() + substring(1).toLowerCase();
}

void main() {
  print('hello'.toCapitalized()); // Hello
}
```

### ✅ Cascade Notation

```dart
class User {
  String? name;
  int? age;

  void display() {
    print('$name is $age years old.');
  }
}

void main() {
  User()
    ..name = 'Alice'
    ..age = 25
    ..display();
}
```

---

## 12. Libraries & Packages

```dart
import 'dart:math';

void main() {
  print(sqrt(16)); // 4.0
}
```

Using packages from pub.dev:

```yaml
# pubspec.yaml
dependencies:
  http: ^0.13.0
```

---

## 13. Testing (Optional)

```dart
import 'package:test/test.dart';

void main() {
  test('adds two numbers', () {
    expect(add(2, 3), 5);
  });
}

int add(int a, int b) => a + b;
```

---

## 📚 Resources

- [Dart Official Documentation](https://dart.dev)
- [DartPad (Online Playground)](https://dartpad.dev)
- [Flutter](https://flutter.dev)

---

> ✅ Keep practicing with mini-projects like calculators, converters, or basic APIs to master Dart efficiently!
## Author : [Niyomugabo Fidele](https://github.com/NiyomugaboFidel)

