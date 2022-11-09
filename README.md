# Tugas 7 PBP

##  stateless widget dan stateful widget .
*stateless widget 
Merupakan widget statis yang berarti widget tersebut tidak berubah.
*stateful widget
Merupakan widget yang dinamis. Ini berarti widget ini dapat merubah tampilannya sesuai response dari events yang dipicu baik dari interaksi user maupun adanya variabel atau nilai baru yang didapat.

## Widget dan fungsinya.

FloatingActionButton --> widget untuk menampilkan sebuah tombol yang dapat melakukan suatu tindakan ketika diklik.
Center --> widget untuk mengatur semua widget turunannya ke tengah halaman yang ada di dalamnya.
Padding --> widget untuk membungkus widge lain untuk memberi ukuran ke arah tertentu.
Scaffold --> Widget untuk mengimplementasikan layout Material Design.
Text --> widget untuk menampung beberapa teks yang akan ditampilkan di layar.
Row --> widget untuk mengatur semua widget turunannya secara horizontal
Column --> widget untuk mengatur semua widget turunannya secara vertikal
MaterialApp --> widget untuk membuat aplikasi material


## fungsi dari setState() dan variabel yang terdampak.
Memanggil setState memberi tahu kerangka kerja bahwa keadaan internal objek ini telah berubah dengan cara yang mungkin memengaruhi antarmuka pengguna di subpohon ini, yang menyebabkan kerangka kerja menjadwalkan pembangunan untuk objek Status ini.
pada tugas ini setState() ada pada seperti fungsi _incrementCounter() 

## perbedaan antara const dengan final.
keyword final digunakan untuk meng-hardcode nilai-nilai variabel dan tidak dapat diubah di masa mendatang, tidak ada jenis operasi yang dilakukan pada variabel-variabel ini yang dapat mengubah nilainya (keadaan).
keyword Const di Dart berperilaku persis seperti keyword final. Satu-satunya perbedaan antara final dan const adalah bahwa const membuat variabel konstan dari waktu kompilasi saja. Menggunakan const pada suatu objek, membuat seluruh status dalam objek secara ketat diperbaiki pada waktu kompilasi dan bahwa objek dengan status ini akan dianggap beku dan sepenuhnya tidak dapat diubah.

## Cara implementasi
1. Membuat aplikasi baru bernama counter_7
2. Membuat MyApp
3. Membuat fungsi _incrementCounter() dan _decrementCounter()
4. Membuat atribut teks yang menampilkan status ganjil atau genap dari counter beserta warnanya 
5. Mengganti floatingActionButton untuk menambah dan mengurangi nilai dari counter 

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
"# tugasflutter" 
