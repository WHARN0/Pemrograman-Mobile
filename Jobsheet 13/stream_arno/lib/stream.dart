import 'package:flutter/material.dart';

class ColorStream {
  final List<Color> colors = [
    Colors.blueGrey,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.teal,
    Colors.indigo,
    Colors.brown,
    Colors.cyan,
    Colors.deepOrange,
    Colors.lime
  ];

  Stream<Color> getColors() async* {
    // yield* berfungsi untuk menghasilkan setiap elemen objek Stream secara
    // berurutan ke listeners
    yield* Stream.periodic(const Duration(seconds: 1), (int t) {
      int index = t % colors.length;
      return colors[index];
    });
  } 
  // kode diatas menghasilkan Stream yang mengeluarkan elemen dari daftar colors
  // secara bergantian dengan durasi 1 detik per elemen
}
