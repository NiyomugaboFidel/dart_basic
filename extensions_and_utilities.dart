extension StringExtension on String {
  String toCapitalized() =>
      this[0].toUpperCase() + substring(1).toLowerCase();
}

class User {
  String? name;
  int? age;

  void display() {
    print('$name is $age years old.');
  }
}

void main() {
  print('hello'.toCapitalized()); // Hello

  User()
    ..name = 'Alice'
    ..age = 25
    ..display();
}