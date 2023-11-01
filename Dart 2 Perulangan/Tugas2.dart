void main() {
   var a = '';
  // var b = 5;

  for (var i = 0; i < 10; i++) {
    for (var j = 0; j <= i; j++) {
    a += '*';
    }
    a += '\n';
  }
print('$a');
}