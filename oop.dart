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