import 'dart:io';

void kombinasi(String a, int n) { 
  if (n == 0) { 
    stdout.write("$a ");
  } else { 
    for (int i = 97; i <= 99; i++) { // 97 adalah a 98=b 99=c
      kombinasi(a + String.fromCharCode(i), n - 1); 
    } 
  } 
} 

void main() { 
  int n = 3; 
  kombinasi("", n); 
}