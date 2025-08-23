import 'dart:io';
import '../parents/author.dart';
import '../childs/novelis.dart';
import '../childs/mangaka.dart';
import '../childs/comic.dart';
import '../utility/console_utility.dart';
import '../parents/book.dart';
import '../childs/novel.dart';

class Displayer {   
  ConsoleUtility consoleUtility = ConsoleUtility();

  // AUTHOR ENV
  final int colFirst = 15;
  final int colLast = 15;
  final int colCountry = 12;
  final int colAge = 5;
  final int colType = 10;
  final int colSerial = 12;
  final int colRating = 8;

  // BOOK ENV
  // BOOK
  final int colBookCode = 10;
  final int colBookTitle = 30;
  final int colBookAuthor = 15;
  final int colBookPublisher = 25;
  final int colBookPrice = 5;
  // NOVEL
  final int colNovelPublisher = 12;
  final int colNovelGenre = 5;
  // COMIC
  final int colComicMangaka = 19;
  final int colComicPublisher = 22;
  final int colComicVolSeries = 5;

  // SEMUA BOOK
  void displayAllBook(List<Book> books) {    
    print("\nSemua Book:");
    consoleUtility.printDividen(char: '=');
    print(
      '${"Book Code".padRight(colBookCode)}'
      '| ${"Title".padRight(colBookTitle)}'
      '| ${"Author".padRight(colBookAuthor)}'
      '| ${"Publisher".padRight(colBookPublisher)}'
      '| ${"Price".padRight(colBookPrice)}'
    );
    consoleUtility.printDividen(char: '=');

    for (var book in books) {      
      if (book is! Novel && book is! Comic) {
        _printRowBook(book);
      }
    }
    
    consoleUtility.printDividen(char: '=');
  }

  // SEMUA NOVEL
  void displayAllNovel(List<Book> books){    
    print("\nSemua Novel:");
    consoleUtility.printDividen(char: '=');
    print(
      '${"Novel Code".padRight(colBookCode)}'
      '| ${"Title".padRight(colBookTitle)}'
      '| ${"Novelis".padRight(colBookAuthor)}'
      '| ${"Publisher".padRight(colNovelPublisher)}'
      '| ${"Price".padRight(colBookPrice)}'
      '| ${"Genre".padRight(colNovelGenre)}'
    );
    consoleUtility.printDividen(char: '=');

    for (var novel in books) {
      if (novel is Novel) {
        _printRowNovel(novel);  
      }    
    }
    
    consoleUtility.printDividen(char: '=');
  }

  // SEMUA COMIC
  void displayAllComic(List<Book> books){
    print("\nSemua Novel:");
    consoleUtility.printDividen(char: '=');
    print(
      '${"Comic Code".padRight(colBookCode)}'
      '| ${"Title".padRight(colBookTitle)}'
      '| ${"Mangaka".padRight(colComicMangaka)}'
      '| ${"Publisher".padRight(colComicPublisher)}'
      '| ${"Price".padRight(colBookPrice)}'
    );
    consoleUtility.printDividen(char: '=');

    for (var comic in books) {
      if (comic is Comic) {
        _printRowComic(comic);
      }    
    }
    
    consoleUtility.printDividen(char: '=');
  }

  // HANYA SATU BOOK
  void displayBook(Book book){
    print("\n Novel Ditemukan:");
    consoleUtility.printDividen(char: '=');
    print(
      '${"Novel Code".padRight(colBookCode)}'
      '| ${"Title".padRight(colBookTitle)}'
      '| ${"Novelis".padRight(colBookAuthor)}'
      '| ${"Publisher".padRight(colNovelPublisher)}'
      '| ${"Price".padRight(colBookPrice)}'
      '| ${"Genre".padRight(colNovelGenre)}'
    );
    consoleUtility.printDividen(char: '=');
    _printRowBook(book);
    consoleUtility.printDividen(char: '=');
  }

  // HANYA SATU NOVEL
  void displayNovel(Novel novel){
    print("\nNovel Ditemukan:");
    consoleUtility.printDividen(char: '=');
    print(
      '${"Novel Code".padRight(colBookCode)}'
      '| ${"Title".padRight(colBookTitle)}'
      '| ${"Novelis".padRight(colBookAuthor)}'
      '| ${"Publisher".padRight(colNovelPublisher)}'
      '| ${"Price".padRight(colBookPrice)}'
      '| ${"Genre".padRight(colNovelGenre)}'
    );
    consoleUtility.printDividen(char: '=');
    _printRowNovel(novel);
    consoleUtility.printDividen(char: '=');
  }

  // HANYA SATU COMIC
  void displayComic(Comic comic){
    print("\nComic Ditemukan:");
    consoleUtility.printDividen(char: '=');
    print(
      '${"Comic Code".padRight(colBookCode)}'
      '| ${"Title".padRight(colBookTitle)}'
      '| ${"Mangaka".padRight(colComicMangaka)}'
      '| ${"Publisher".padRight(colComicPublisher)}'
      '| ${"Price".padRight(colBookPrice)}'      
    );
    consoleUtility.printDividen(char: '=');
    _printRowComic(comic);
    consoleUtility.printDividen(char: '=');
  }

  // ROW BOOK
  void _printRowBook(Book book){
    stdout.write(
      '${book.bookCode.padRight(colBookCode)}'
      '| ${book.title.padRight(colBookTitle)}'
      '| ${book.author.getFullName().padRight(colBookAuthor)}'
      '| ${book.publisher.publisherName.padRight(colBookPublisher)}'
      '| ${book.price.toString().padRight(colBookPrice)}\n'
    );
  }

  // ROW NOVEL  
  void _printRowNovel(Novel novel){
    stdout.write(
      '${novel.bookCode.padRight(colBookCode)}'
      '| ${novel.title.padRight(colBookTitle)}'
      '| ${novel.author.getFullName().padRight(colBookAuthor)}'
      '| ${novel.publisher.publisherName.padRight(colNovelPublisher)}'
      '| ${novel.price.toString().padRight(colBookPrice)}'
      '| ${novel.genre.padRight(colNovelGenre)}\n'
    );
  }

  // ROW COMIC
  void _printRowComic(Comic comic){
    stdout.write(
      '${comic.bookCode.padRight(colBookCode)}'
      '| ${comic.title.padRight(colBookTitle)}'
      '| ${comic.author.getFullName().padRight(colComicMangaka)}'
      '| ${comic.publisher.publisherName.padRight(colComicPublisher)}'
      '| ${comic.price.toString().padRight(colBookPrice)}\n'      
    );
  }

  // SEMUA AUTHOR
  void displayAllAuthors(List<Author> authors) {
    print('\nSemua Penulis:');
    consoleUtility.printDividen(char: '=');
    print(
      '${"Nama Depan".padRight(colFirst)}'
      '| ${"Nama Belakang".padRight(colLast)}'
      '| ${"Negara".padRight(colCountry)}'
      '| ${"Umur".padRight(colAge)}'
      '| ${"Tipe".padRight(colType)}'
    );
    consoleUtility.printDividen(char: '=');

    for (var author in authors) {
      String tipe = 'Author';
      if (author is Novelis) tipe = 'Novelis';
      if (author is Mangaka) tipe = 'Mangaka';
      _printRow(author, tipe);
    }
    consoleUtility.printDividen(char: '=');
  }

  // SEMUA NOVELIS
  void displayNovelist(List<Author> authors) {
    print('\nNovelis:');
    consoleUtility.printDividen(char: '=');
    print(
      '${"Nama Depan".padRight(colFirst)}'
      '| ${"Nama Belakang".padRight(colLast)}'
      '| ${"Negara".padRight(colCountry)}'
      '| ${"Umur".padRight(colAge)}'
      '| ${"Best Seller".padRight(colSerial)}'
      '| ${"Rating".padRight(colRating)}'
    );
    consoleUtility.printDividen(char: '=');

    for (var author in authors) {
      if (author is Novelis) {
        _printNovelisRow(author);
      }
    }
    consoleUtility.printDividen(char: '=');
  }

  // SEMUA MANGAKA
  void displayMangaka(List<Author> authors) {
    print('\nMangaka:');
    consoleUtility.printDividen(char: '=');
    print(
      '${"Nama Depan".padRight(colFirst)}'
      '| ${"Nama Belakang".padRight(colLast)}'
      '| ${"Negara".padRight(colCountry)}'
      '| ${"Umur".padRight(colAge)}'
      '| ${"Rating".padRight(colRating)}'
    );
    consoleUtility.printDividen(char: '=');

    for (var author in authors) {
      if (author is Mangaka) {
        _printMangakaRow(author);
      }
    }
    consoleUtility.printDividen(char: '=');
  }

  // ROW AUTHOR
  void _printRow(Author author, String tipe) {
    stdout.write(
      '${author.firstName.padRight(colFirst)}'
      '| ${author.lastName.padRight(colLast)}'
      '| ${author.country.padRight(colCountry)}'
      '| ${author.age.toString().padRight(colAge)}'
      '| ${tipe.padRight(colType)}\n'
    );
  }

  // ROW NOVELIS
  void _printNovelisRow(Novelis novelis) {
    stdout.write(
      '${novelis.firstName.padRight(colFirst)}'
      '| ${novelis.lastName.padRight(colLast)}'
      '| ${novelis.country.padRight(colCountry)}'
      '| ${novelis.age.toString().padRight(colAge)}'
      '| ${novelis.serial.toString().padRight(colSerial)}'
      '| ${novelis.rating.toString().padRight(colRating)}\n'
    );
  }

  // ROW MANGAKA
  void _printMangakaRow(Mangaka mangaka) {
    stdout.write(
      '${mangaka.firstName.padRight(colFirst)}'
      '| ${mangaka.lastName.padRight(colLast)}'
      '| ${mangaka.country.padRight(colCountry)}'
      '| ${mangaka.age.toString().padRight(colAge)}'
      '| ${mangaka.rating.toString().padRight(colRating)}\n'
    );
  }
}
