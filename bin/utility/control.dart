import 'dart:io';
import '../parents/book.dart';
import '../utility/console_utility.dart';
import '../childs/comic.dart';
import '../childs/mangaka.dart';

// BERISI FUNCTION UNTUK CONTROL APLIKASI
class Control{
  ConsoleUtility consoleUtility = ConsoleUtility();

  // BOOK CONTROL //
  // MENCARI BOOK PALING MURAH
  Book getCheapestBook(List<Book> listAllBook){  
    listAllBook.sort((a, b) => a.price.compareTo(b.price));
    return listAllBook.first;
  }

  // MENCARI BOOK PALING MAHAL
  Book getExpensiveBook(List<Book> listAllBook){  
    listAllBook.sort((a, b) => a.price.compareTo(b.price));
    return listAllBook.last;
  }

  // MENCARI COMIC PALING MAHAL
  Comic getExpensiveComic(List<Book> listAllBook){  
    List<Book> listComic = [];
    listAllBook.sort((a, b) => a.price.compareTo(b.price));
    for (var book in listAllBook) {
      if (book is Comic) {
        listComic.add(book);
      }
    }
    return listComic.last as Comic;
  }

  // MENCARI BOOK BERDASARKAN RANGE PRICE
  List<Book> listBookByPrice(List<Book> listAllBook){
    List<Book> listByPrice = [];
    consoleUtility.printTitle(title: "Pencarian Book Berdasarkan Range Price");
    stdout.write("Masukan nilai min\t: ");
    double? min = double.tryParse(stdin.readLineSync() ?? '');
    stdout.write("Masukan nilai max\t: ");
    double? max = double.tryParse(stdin.readLineSync() ?? '');

    if (min != null && max != null) {
      for (var element in listAllBook) {
        if (element.price >= min && element.price <= max) {
          listByPrice.add(element);          
        }
      }
    } else {
      print("Range diluar jangkauan, silahkan ulangi!");      
    }
    return listByPrice;
  }

  // MENCARI COMIC BERDASARKAN RATING MANGAKA
  List<Book> listComicByRateMangaka(List<Book> listAllBook) {    
    const Map<int, String> ratingMap = {
      1: "Best Seller",
      2: "Good",
      3: "New Commer",
    };
    
    consoleUtility.printTitle(title: "Pencarian Comic Berdasarkan Rating Mangaka");
    for (var i = 0; i < ratingMap.length; i++) {
      print("${i + 1} ${ratingMap[i + 1]}");
    }
    stdout.write("Masukan rating (1-3)\t: ");
    String? rating = stdin.readLineSync()?.trim();
    int? ratingNumber = int.tryParse(rating ?? '');
    consoleUtility.clearConsole();
    // VALIDASI
    if (ratingNumber == null || !ratingMap.containsKey(ratingNumber)) {
      print("Pilihan rating tidak valid.");
      return []; // MENGEMBALIKAN LIST KOSONG JIKA INPUT TIDAK VALID
    }
    
    // MENGAMBIL RATING STRING YANG BENAR DARI MAP
    String targetRating = ratingMap[ratingNumber]!;

    List<Book> listComicByRate = [];

    // MENGGUNAKAN whereType UNTUK MENYARING LIST
    for (var book in listAllBook.whereType<Comic>()) {
      // KARENA SUDAH YAKIN BOOK ADALAH COMIC, MAKA KITA BISA CASTING DENGAN AMAN
      Comic comic = book;
      
      // VALIDASI APAKAH PENULIS COMIC ADALAH MANGAKA
      if (comic.author is Mangaka) {
        Mangaka mangaka = comic.author as Mangaka;
        
        // VALIDASI RATING
        if (mangaka.rating == targetRating) {
          listComicByRate.add(comic);
        }
      }
    }
    return listComicByRate;
  }

  // MENCARI BOOK BERDASARKAN PUBLISHER'S COUNTRY
  List<Book> listBookByPublisherCountry(List<Book> listAllBook){
    List<Book> listBookByPublisherCountry = [];

    consoleUtility.printTitle(title: "Pencarian Book Berdasarkan Publisher's Country");        
    stdout.write("Masukan country\t: ");
    String? country = stdin.readLineSync()?.trim() ?? '';
    consoleUtility.clearConsole();

    // VALIDASI
    for (var book in listAllBook) {
      if (book.publisher.country.toLowerCase() == country.toLowerCase()) {
        listBookByPublisherCountry.add(book);
      }
    }
    if (listBookByPublisherCountry.isEmpty) { // LIST KOSONG
      print("Book dengan Publisher's country $country tidak ditemukan.");
      return []; // MERETURN LIST KOSONG
    }
    return listBookByPublisherCountry;    
  }

  // MENCARI BOOK BERDASARKAN AUTHOR'S COUNTRY
  List<Book> listBookByAuthorCountry(List<Book> listAllBook){
    List<Book> listBookByAuthorCountry = [];

    consoleUtility.printTitle(title: "Pencarian Book Berdasarkan Author's Country");        
    stdout.write("Masukan country\t: ");
    String? country = stdin.readLineSync()?.trim() ?? '';
    consoleUtility.clearConsole();

    // VALIDASI
    for (var book in listAllBook) {
      if (book.author.country.toLowerCase() == country.toLowerCase()) {
        listBookByAuthorCountry.add(book);
      }
    }
    if (listBookByAuthorCountry.isEmpty) { // LIST KOSONG
      print("Book dengan Publisher's country $country tidak ditemukan.");
      return []; // MERETURN LIST KOSONG
    }
    return listBookByAuthorCountry;    
  }
}