import 'dart:io';

void main() {
  print("-----------------------------------");
  print("      Masukkan Data Berikut : ");
  print("-----------------------------------");
  stdout.write("Masukkan Nama Kamu: ");
  String nama1 = stdin.readLineSync()!;
  
  stdout.write("Masukkan Umur Kamu: ");
  String umurIn1 = stdin.readLineSync()!;

  print("-----------------------------------");
  stdout.write("Masukkan Nama Teman Kamu: ");
  String nama2 = stdin.readLineSync()!;
  
  stdout.write("Masukkan Umur Teman Kamu: ");
  String umurIn2 = stdin.readLineSync()!;
  
  // Mengonversi input umur menjadi integer
  int umur1 = int.tryParse(umurIn1) ?? 0;
  int umur2 = int.tryParse(umurIn2) ?? 0;

  // Menambahkan umur-umur tersebut menjadi satu
  int totalUmur = umur1 + umur2;

  // Membuat kalimat dengan informasi nama dan total umur
  String kalimat1 = "$nama1 dan $nama2 ";
  String kalimat2 = "Total umur kalian adalah $totalUmur tahun.";

  print("=====================================");
  print(kalimat1);
  print(kalimat2);
}
