void main() {
//   var list = [1, 2, 3];
// assert(list.length == 3);
// assert(list[1] == 2);
// print(list.length);
// print(list[1]);

// list[1] = 1;
// assert(list[1] == 1);
// print(list[1]);
  final List<String?> list = [null, null, null, null, null];

  list[1] = "Bagus Arnovario Wibowo";
  list[2] = "2241720225";

  assert(list.length == 5);

  assert(list[1] == "Bagus Arnovario Wibowo");
  print(list.length);
  print(list[1]);
  assert(list[2] == "2241720225");
  print(list[2]);
}
