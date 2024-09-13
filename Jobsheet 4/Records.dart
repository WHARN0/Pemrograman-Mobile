void main() {
  var record = (1, 2); // Tuple tanpa label
  print('Sebelum tukar : $record');
  var swappedRecord = tukar(record);
  print('Sesudah tukar : $swappedRecord');

  // Record type annotation in a variable declaration:
  (String, int) mahasiswa = ('Bagus Arnovario Wibowo', 2241720225);
  print('Mahasiswa: $mahasiswa');

  var mahasiswa2 =
      (first: 'Bagus Arnovario Wibowo', a: 2241720225, b: true, last: 'NIM');

  print(mahasiswa2.first); // Prints 'Bagus Arnovario Wibowo'
  print(mahasiswa2.a); // Prints 2241720225
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.last); // Prints 'NIM'
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
