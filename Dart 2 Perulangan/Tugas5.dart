import 'dart:io';

void main() {
  stdout.write("Masukkan tinggi segitiga: ");
  int tinggi = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= tinggi; i++) {
    // Membuat spasi sebelum bintang pertama di setiap baris
    for (int j = tinggi; j > i; j--) {
      stdout.write(" ");
    }

    // Mencetak bintang sejumlah dua kali tinggi kurang satu
    for (int k = 1; k <= (2 * i - 1); k++) {
      stdout.write("*");
    }

    // Pindah ke baris berikutnya
    print("");
  }
}
