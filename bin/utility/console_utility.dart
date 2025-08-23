import 'dart:io';

class ConsoleUtility {
  // FUNCTION PRINT GARIS  
  // MENGGUNAKAN PARAMETER OPSIONAL DENGAN NILAI DEFAULT
  void printDividen({String char = '=', int panjang = 100}) {
    for (int i = 0; i < panjang; i++) {
      stdout.write(char);
    }
    stdout.write('\n'); 
  }

  // FUNCTION PRINT JUDUL
  void printTitle({required String title, String char = '-', int panjang = 100}) {
    final int titleLength = title.length;

    // ALGORITMA //
    // MENGECEK APAKAH PANJANG JUDUL LEBIH DARI PANJANG GARIS.
    if (titleLength > panjang) {
      print(title);
      return;
    }

    // MENGHITUNG SISA KARAKTER DI KEDUA SISI
    final int remainingChars = panjang - titleLength;

    // MENGHITUNG KARAKTER DI SISI KIRI
    final int leftPadding = remainingChars ~/ 2;

    // MENGHITUNG DI SISI KANAN (UNTUK KASUS GANJIL)
    final int rightPadding = remainingChars - leftPadding;

    // MENCETAK PADDING KIRI
    for (int i = 0; i < leftPadding; i++) {
      stdout.write(char);
    }

    // MENCETAK JUDUL
    stdout.write(title);

    // MENCETAK PADDING KANAN
    for (int i = 0; i < rightPadding; i++) {
      stdout.write(char);
    }
    stdout.write('\n');
  }

  // FUNCTION CLEAR CONSOLE
  // FUNGSI UNTUK MEMBERSIHKAN TERMINAL
  void clearConsole() {
    // MENCETAK 50 BARIS KOSONG UNTUK MENSIMULASIKAN PEMBERSIHAN KONSOL    
    for (int i = 0; i < 50; i++) {
      print('');
    }
  }
}