void main() {
  // Nama dan NIM
  String nama = "Bagus Arnovario Wibowo";
  String nim = "2241720225";

  print("Bilangan prima dari 0 sampai 201:");

  for (int i = 2; i <= 201; i++) {
    bool prima = true;
    for (int j = 2; j < i; j++) {
      if (i % j == 0) {
        prima = false;
        break;
      }
    }
    if (prima) {
      print("Bilangan prima: $i, Nama: $nama, NIM: $nim");
    }
  }
}
