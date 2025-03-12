import 'dart:io';

int segitiga(int row, int col) {
  if (col == 0 || col == row) {
    return 1;
  } else {
    return segitiga(row - 1, col - 1) + segitiga(row - 1, col);
  }
}

void main() {
  int n = 6; 
  for (int i = 0; i < n; i++) {
    stdout.write(' ' * (n - i)); // spasi untuk membentuk piramida
    for (int j = 0; j <= i; j++) {
      stdout.write('${segitiga(i, j)} '); 
    }
    print('');
  }
}