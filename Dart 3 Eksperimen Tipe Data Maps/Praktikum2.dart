void main(){
  //langkah 1
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  //langkah 3
  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  //var names3 = {}; // Creates a map, not a set.

  names1.add('Andhito Galih Nur Cahyo');
  names1.add('2141720138');
  names2.addAll({'Andhito Galih Nur Cahyo', '2141720138'});

  print(names1);
  print(names2);
  //print(names3);
}
