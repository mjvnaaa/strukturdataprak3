List<int> hasilFiboRekursif = [1, 1];

int fibonacciRekursif(int n) {
  if (n == 1 || n == 2) {
    return 1;
  } else {
    int hasil = fibonacciRekursif(n - 1) + fibonacciRekursif(n - 2);
    if (hasilFiboRekursif.length < n) {
      hasilFiboRekursif.add(hasil);
    }
    return hasil;
  }
}

void main() {
  int n = 5;
  fibonacciRekursif(n);
  print(fibonacciRekursif(n));
  print(hasilFiboRekursif.sublist(0, n));
}