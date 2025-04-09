class Person {
  String name;
  String location;

  Person(this.name, this.location);

  void introduce() {
    print("I'm $name, from $location ");
  }
}

class MenuItem {
  String name;
  double price;

  MenuItem(this.name, this.price);

  format(){
    return "$name ===========> $price";
  }

  @override
  String toString(){
    return format();
  }
}




void main() {
  var person = Person("Sam", "Kigali");
  person.introduce();

  var Pizza = MenuItem("volcano", 12.99);
  var Bread = MenuItem('Hambaga', 5.99);

  print("===========MENU ITEMS ============");
  print("==================================");
  print('\n');
  print("Name ===========> Price");
  print("==================================");
  print(Pizza);
  print(Bread);
  print('\n');
  print("Hello! ${person.name}");
  print("What do you like to eat ?");
}