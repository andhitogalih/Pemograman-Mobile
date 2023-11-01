void main(){
  void main(List<String> arguments) {
  var list = [1, 2, 3];
  var list1;
  var list2 = [0, ...list];

  print(list1);
  print(list2);
  print(list2.length);

// Langkah 3 (1)
  list1 = [1, 2, null];
  print(list1);

  var list3 = [0, ...?list1];
  print(list3.length);

// Langkah 3 (2) --> Tambahkan variabel list berisi NIM
  var nim= ['2141720015'];
  var list4 = [0, ...nim];
  print(list4);

  var promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  var login = 'Manager';
  var nav2 = [
    'Home',
    'Furniture',
    'Plants',
    if (login case 'Manager') 'Inventory'
  ];

  print(nav2);

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');

  print(listOfStrings);

  }
}