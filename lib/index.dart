void main() {
  
  List<int> scores = [99, 30, 50, 25, 10];
// scores.shuffle();
  print(scores.indexOf(99));
}



// int fub(int n, [Map<int, int>? memo]) {
//   memo ??= {};
//   if (n == 0 || n == 1) return n;
//   if (memo.containsKey(n)) return memo[n]!;
//   memo[n] = fub(n - 1, memo) + fub(n - 2, memo);
//   return memo[n]!;
// }
