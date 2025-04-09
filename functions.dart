int add(int x, int y) => x + y;

void main() {
  print(add(3, 4)); // 7

  greet(name: "Alice");
}

void greet({String name = "Guest"}) {
  print("Hello, $name!");
}