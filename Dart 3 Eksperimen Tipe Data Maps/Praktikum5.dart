void main(){
  (int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

void main(List<String> arguments) {
  // Langkah 1
  // var record = ('first', a: 2, b: true, 'last');
  // print(record);

  // Langkah 3
  // var record = (1, 2);
  // print(record);
  // print(tukar(record));

  // Langkah 4
  // Record type annotation in a variable declaration:
  // (String, int) mahasiswa;
  // mahasiswa = ('Andhito Galih Nur Cahyo', 2141720138);
  // print(mahasiswa);

  // Langkah 5
  var mahasiswa2 = ('Andhito Galih Nur Cahyo', a: 2141720138, b: true, 'last');

  print(mahasiswa2.$1);
  print(mahasiswa2.a); 
  print(mahasiswa2.b); 
  print(mahasiswa2.$2); 
}
}