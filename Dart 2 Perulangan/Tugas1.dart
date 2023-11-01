import 'dart:io';

int mainCode() {
  // declaration variable
int oilThatShouldBuy = 0;
// ---[ Tulis kodemu setelah baris ini ]---

    print("Apakah Anda perlu membeli minyak goreng? (y/t)");
    String buyOil = stdin.readLineSync()!;
    
    if (buyOil.toLowerCase() == "y") {
      oilThatShouldBuy += 1;
    }

    print("Apakah Anda perlu membeli telur? (y/t)");
    String buyEggs = stdin.readLineSync()!;
    
    if (buyEggs.toLowerCase() == "y") {
      oilThatShouldBuy += 5;
    }
  

// ---[ Jangan menulis atau mengubah kode di bawah ini ]---
return oilThatShouldBuy;

}

void main() {
  int result = mainCode();
  print("Jumlah minyak goreng yang harus Anda beli: $result botol");
}