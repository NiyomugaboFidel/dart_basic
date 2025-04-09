void main() {
  String? name;
  print(name?.length); // null

  int? age;
  print(age ?? 0); // fallback to 0
}