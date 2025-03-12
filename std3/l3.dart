int cariBiner(List<int> data, int kiri, int kanan, int cari) {
  if (kiri > kanan) {
    return -1;
  }

  int tengah = (kiri + kanan) ~/ 2;

  if (data[tengah] == cari) {
    return tengah;
  } else if (data[tengah] > cari) {
    return cariBiner(data, kiri, tengah - 1, cari);
  } else {
    return cariBiner(data, tengah + 1, kanan, cari);
  }
}
 
void main() {
  List<int> data = [2, 5, 8, 10, 14, 32, 35, 41, 67, 88, 90, 101, 109];
  int cari = 90;
  int hasil = cariBiner(data, 0, data.length - 1, cari);

  if (hasil != -1) {
    print("data $cari berada pada indeks ke-$hasil");
  } else {
    print("data $cari tidak ditemukan");
  }
}
