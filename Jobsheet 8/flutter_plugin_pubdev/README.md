# Jobsheet 8 Manajemen Plugin

Nama : Bagus Arnovario Wibowo
NIM : 2241720225

Langkah Praktikum 4
![Screenshot Hasil Langkah Praktikum 4](images/Langkah_Praktikum_4.png)<br/>
Terdapat error dikarenakan tidak adanya perintah import untuk mengimpor package auto_sized_text di dalam file Dart dan variabel text yang belum dideklarasikan atau diinisialisasi.

Hasil Langkah Praktikum 1-6
![Screenshot Hasil Langkah Praktikum 4](images/Hasil_Langkah_Praktikum_1-6.png)

Tugas :<br/> 
2. Maksud dari langkah 2 pada praktikum tersebut adalah untuk menambahkan plugin atau package yang bernama auto_sized_text secara otomatis.<br/>
3. Maksud dari langkah 5 pada praktikum tersebut adalah untuk mendeklarasikan variabel text dengan tipe data String dan menambahkannya sebagai parameter di constructor.<br/>
4. Fungsi :<br/> 
    - Fungsi pada widget pertama yaitu widget RedTextWidget adalah untuk menampilkan teks yang berwarna merah dan menggunakan AutoSizeText untuk menyesuaikan ukuran teks secara otomatis berdasarkan ruang yang tersedia, hingga maksimal dua baris.<br/>
    - Fungsi pada widget kedua yaitu widget Text adalah untuk menampilkan teks sederhana dengan properti default.<br/>
   Perbedaan :<br/>
    - Pada widget pertama menggunakan AutoSizedText untuk menyesuaikan teks secara otomatis jika ruangnya terbatas dengan maksimal 2 baris, menampilkan teks dengan warna merah, dan memiliki lebar 50 piksel.<br/>
    - Pada widget kedua menggunakan Text yang merupakan widget standar Flutter dan tidak bisa menyesuaikan teks secara otomatis, menampilkan teks dengan warna hitam default, dan memiliki lebar 100 piksel.<br/>
5. Fungsi tiap parameter yang ada di dalam plugin auto_size_text :<br/>
    - key :<br/>
    Mengontrol bagaimana widget diganti oleh widget lain di dalam widget tree.<br/>
    - textKey :<br/> 
    Menentukan key untuk widget Text yang dihasilkan.<br/>
    - style :<br/>
    Jika tidak null, menentukan gaya teks (warna, ukuran, berat, dll.) yang digunakan untuk menampilkan teks.<br/>
    - minFontSize :<br/>
    Ukuran minimum font yang akan digunakan saat menyesuaikan ukuran teks secara otomatis.<br/>
    - maxFontSize :<br/>
    Ukuran maksimum font yang akan digunakan saat menyesuaikan ukuran teks secara otomatis.<br/>
    - stepGranularity :<br/>
    Ukuran langkah dalam penyesuaian ukuran font.<br/>
    - presetFontSizes :<br/>
    Sekumpulan ukuran font yang telah didefinisikan sebelumnya.<br/>
    - group :<br/>
    Mengizinkan beberapa AutoSizeText untuk disinkronkan ukuran teksnya.<br/>
    - textAlign :<br/>
    Menentukan bagaimana teks disejajarkan secara horizontal dalam ruang yang disediakan (misalnya, kiri, kanan, tengah, atau justify).<br/>
    - textDirection :<br/>
    Mengontrol arah penulisan teks, seperti dari kiri ke kanan (ltr) atau kanan ke kiri (rtl). Ini penting untuk teks dalam bahasa tertentu seperti Arab atau Ibrani.<br/>
    - locale :<br/>
    Menentukan bahasa lokal yang digunakan untuk memilih font ketika karakter Unicode yang sama dapat ditampilkan secara berbeda tergantung pada lokal.<br/>
    - softWrap :<br/>
    Menentukan apakah teks akan dipotong di tempat jeda baris yang lembut (soft line breaks).<br/>
    - wrapWords :<br/>
    Menentukan apakah kata-kata yang tidak muat dalam satu baris harus dibungkus atau dipotong.<br/>
    - overflow :<br/>
    Menentukan bagaimana visual overflow harus ditangani.<br/>
    - overflowReplacement :<br/> 
    Jika teks melampaui batas dan tidak muat dalam ruang yang tersedia, widget pengganti ini akan ditampilkan sebagai gantinya.<br/>
    - textScaleFactor :<br/>
    Mengontrol skala teks, yaitu jumlah piksel font untuk setiap piksel logis.<br/>
    - maxLines :<br/> 
    Menentukan jumlah maksimum baris yang boleh digunakan oleh teks.<br/>
    - semanticsLabel :<br/>
    Menyediakan label semantik alternatif untuk teks ini.<br/>