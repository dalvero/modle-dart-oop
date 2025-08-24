import 'dart:io';
import '../menu/menu.dart';
import '../utility/console_utility.dart';
import '../repository/repo_author.dart';
import '../utility/displayer.dart';
import '../repository/repo_book.dart';
import '../utility/control.dart';
import '../repository/repo_publisher.dart';

class Runner {  
  Menu mainMenu = Menu();
  ConsoleUtility consoleUtility = ConsoleUtility();
  RepoAuthor repoAuthor = RepoAuthor();
  Displayer displayer = Displayer();
  RepoBook repoBook = RepoBook();
  Control control = Control();
  RepoPublisher repoPublisher = RepoPublisher();

  // FUNCTION UNTUK MENJALANKAN PROGRAM
  void run(){    
    // LOOPING PROGRAM
    bool isExit = false;
    do {
      // PRINT MAIN MENU
      consoleUtility.clearConsole();
      consoleUtility.printTitle(char: '=', title: "Main Menu");
      mainMenu.printMenu(mainMenu.mainMenu);
      consoleUtility.printDividen();

      // USER INPUT
      int? selection = userSelection(mainMenu.mainMenu);     

      // VALIDASI
      switch (selection) {
        case -1: // KONDISI SELCTION TIDAK VALID
          print("Pilihan anda diluar jangkauan atau tidak valid.");
          print("Silahkan ulangi!");
          isExit = false;
          break;
        case 1: // KONDISI BOOK MENU
          startBookMenu(); 
          break;
        case 2: // KONDISI AUTHOR MENU
          startAuthorMenu();      
          break;
        case 3: // KONDISI PUBLISHER MENU 
          startPublisherMenu();
          break;
        case 0: // KONDISI EXIT
          print("Anda telah keluar dari program.");
          print("Terima Kasih.");
          isExit = true;
          break;
        default:
      }
    } while (!isExit);
  }

  // FUNCTION UNTUK MENDAPATKAN PILIHAN MENU USER
  int userSelection(List<String> menu){
    // INPUT USER
    stdout.write("Masukan pilihan anda 0-(${menu.length}): ");
    int? selection = int.tryParse(stdin.readLineSync() ?? '');

    // VALIDASI JIKA USER MENGINPUT PILIHAN SESUAI MENU DAN TIDAK NULL
    if (selection != null && selection >= 0 && selection <= menu.length) {      
      return selection;
    } 
    return -1;
  }

  // FUNCTION UNTUK BOOK MENU PROGRAM
  void startBookMenu(){
    // LOOPING PROGRAM
    bool isExit = false;
    do {
      // PRINT BOOK MENU
      consoleUtility.clearConsole();
      consoleUtility.printTitle(char: '=', title: "Book Menu Searching");
      mainMenu.printMenu(mainMenu.bookMenu);
      consoleUtility.printDividen();

      // USER INPUT
      int? selection = userSelection(mainMenu.bookMenu);     

      // VALIDASI
      switch (selection) {
        case -1: // KONDISI SELCTION TIDAK VALID
          print("Pilihan anda diluar jangkauan atau tidak valid.");
          print("Silahkan ulangi!");
          isExit = false;
          break;
        case 1: // DATA BOOK YANG PALING MURAH
          consoleUtility.clearConsole();
          displayer.displayBook(control.getCheapestBook(repoBook.listBook), "Book termurah");
          stdout.write("Tekan sembarang untuk kembali! ");
          stdin.readLineSync();
          break;
        case 2: // DATA BOOK YANG PALING MAHAL
          consoleUtility.clearConsole();
          displayer.displayBook(control.getExpensiveBook(repoBook.listBook), "Book termahal");
          stdout.write("Tekan sembarang untuk kembali! ");
          stdin.readLineSync();
          break;
        case 3: // DATA BOOK BERDASARKAN RANGE PRICE
          consoleUtility.clearConsole();
          displayer.displayAllBook(control.listBookByPrice(repoBook.listBook), "Book termahal", true, true);
          stdout.write("Tekan sembarang untuk kembali! ");
          stdin.readLineSync();
          break;
        case 4: // DATA COMIC BERDASARKAN RATING MANGAKA
          consoleUtility.clearConsole();
          displayer.displayAllComic(control.listComicByRateMangaka(repoBook.listBook), "Comic Berdasarkan Rating Mangaka");
          stdout.write("Tekan sembarang untuk kembali! ");
          stdin.readLineSync();
          break;
        case 5: // DATA BOOK BERDASARKAN PUBLISHER COUNTRY
          consoleUtility.clearConsole();
          displayer.displayAllBook(control.listBookByPublisherCountry(repoBook.listBook), "Book Berdasarkan Publishe's Country", true, true);
          stdout.write("Tekan sembarang untuk kembali! ");
          stdin.readLineSync();
          break;
        case 6: // DATA BOOK BERDASARKAN AUTHOR COUNTRY
          consoleUtility.clearConsole();
          displayer.displayAllBook(control.listBookByAuthorCountry(repoBook.listBook), "Book Berdasarkan Publishe's Country", true, true);
          stdout.write("Tekan sembarang untuk kembali! ");
          stdin.readLineSync();
          break;
        case 7: // DATA COMIC PALING MURAH
          consoleUtility.clearConsole();
          displayer.displayComic(control.getExpensiveComic(repoBook.listBook), "Comic termurah");
          stdout.write("Tekan sembarang untuk kembali! ");
          stdin.readLineSync();
        case 8: // TAMPILKAN SEMUA BUKU 
          consoleUtility.clearConsole();
          displayer.displayAllBook(repoBook.listBook, "List Book", false, false);
          stdout.write("Tekan sembarang untuk kembali! ");
          stdin.readLineSync();
          break;
        case 9: // TAMPILKAN SEMUA NOVEL 
          consoleUtility.clearConsole();
          displayer.displayAllNovel(repoBook.listBook, "List Novel");
          stdout.write("Tekan sembarang untuk kembali! ");
          stdin.readLineSync();
          break;
        case 10: // TAMPILKAN SEMUA COMIC 
          consoleUtility.clearConsole();
          displayer.displayAllComic(repoBook.listBook, "List Comic");
          stdout.write("Tekan sembarang untuk kembali! ");
          stdin.readLineSync();
          break;
        case 0: // KONDISI EXIT          
          isExit = true;
          break;
        default:
      }
    } while (!isExit);
  }

  // FUNCTION UNTUK AUTHOR MENU PROGRAM
  void startAuthorMenu(){
    // LOOPING PROGRAM
    bool isExit = false;
    do {
      // PRINT BOOK MENU
      consoleUtility.clearConsole();
      consoleUtility.printTitle(char: '=', title: "Author Menu Searching");
      mainMenu.printMenu(mainMenu.authorMenu);
      consoleUtility.printDividen();

      // USER INPUT
      int? selection = userSelection(mainMenu.authorMenu);     

      // VALIDASI
      switch (selection) {
        case -1: // KONDISI SELCTION TIDAK VALID
          print("Pilihan anda diluar jangkauan atau tidak valid.");
          print("Silahkan ulangi!");
          isExit = false;
          break;
        case 1: // KONDISI DISPLAY MANGAKA
          consoleUtility.clearConsole();
          displayer.displayMangaka(repoAuthor.listAuthor);                    
          stdout.write("Tekan sembarang untuk kembali! ");
          stdin.readLineSync();
          break;
        case 2: // KONDISI DISPLAY AUTHOR
          consoleUtility.clearConsole();
          displayer.displayAllAuthors(repoAuthor.listAuthor);
          stdout.write("Tekan sembarang untuk kembali! ");
          stdin.readLineSync();
          break;
        case 3: // KONDISI DISPLAY NOVELIS
          consoleUtility.clearConsole();
          displayer.displayNovelist(repoAuthor.listAuthor);
          stdout.write("Tekan sembarang untuk kembali! ");
          stdin.readLineSync();
          break;
        case 4: // KONDISI AUTHOR BERDASARKAN RANGE UMUR
          consoleUtility.clearConsole();
          displayer.displayAllAuthors(control.listAuthorByAge(repoAuthor.listAuthor));
          stdout.write("Tekan sembarang untuk kembali! ");
          stdin.readLineSync();
          break;
        case 5: // KONDISI AUTHOR BERDASARKAN COUNTRY
          consoleUtility.clearConsole();
          displayer.displayAllAuthors(control.listAuthorByCountry(repoAuthor.listAuthor));
          stdout.write("Tekan sembarang untuk kembali! ");
          stdin.readLineSync();
          break;
        case 0: // KONDISI EXIT          
          isExit = true;
          break;
        default:
      }
    } while (!isExit);
  }

    // FUNCTION UNTUK PUBLISHER MENU PROGRAM
  void startPublisherMenu(){
    // LOOPING PROGRAM
    bool isExit = false;
    do {
      // PRINT PUBLISHER MENU
      consoleUtility.clearConsole();
      consoleUtility.printTitle(char: '=', title: "Publisher Menu Searching");
      mainMenu.printMenu(mainMenu.publisherMenu);
      consoleUtility.printDividen();

      // USER INPUT
      int? selection = userSelection(mainMenu.publisherMenu);     

      // VALIDASI
      switch (selection) {
        case -1: // KONDISI SELCTION TIDAK VALID
          print("Pilihan anda diluar jangkauan atau tidak valid.");
          print("Silahkan ulangi!");
          isExit = false;
          break;
        case 1: // KONDISI PRODUCTION COST PALING MAHAL
          consoleUtility.clearConsole();
          displayer.displayPublisher(control.getExpensivePublisher(repoPublisher.listPublisher));
          stdout.write("Tekan sembarang untuk kembali! ");
          stdin.readLineSync();
          break;          
        case 2: // KONDISI PRODUCTION COST PALING MURAH
          consoleUtility.clearConsole();
          displayer.displayPublisher(control.getCheapestPublisher(repoPublisher.listPublisher));
          stdout.write("Tekan sembarang untuk kembali! ");
          stdin.readLineSync();
          break;                       
        case 0: // KONDISI EXIT          
          isExit = true;
          break;
        default:
      }
    } while (!isExit);
  }
}