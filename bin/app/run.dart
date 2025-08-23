import 'dart:io';
import '../menu/menu.dart';
import '../utility/console_utility.dart';
import '../repository/repo_author.dart';
import '../utility/displayer.dart';
import '../repository/repo_book.dart';

class Runner {  
  Menu mainMenu = Menu();
  ConsoleUtility consoleUtility = ConsoleUtility();
  RepoAuthor repoAuthor = RepoAuthor();
  Displayer displayer = Displayer();
  RepoBook repoBook = RepoBook();

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
        case 1: // KONDISI BOOK MENU
          consoleUtility.printTitle(char: '=', title: "Book Menu Searching");          
          break;
        case 2: // KONDISI AUTHOR MENU
          consoleUtility.printTitle(char: '=', title: "Author Menu Searching");          
          break;
        case 8: // TAMPILKAN SEMUA BUKU 
          consoleUtility.clearConsole();
          displayer.displayAllBook(repoBook.listBook);
          stdout.write("Tekan sembarang untuk kembali! ");
          stdin.readLineSync();
          break;
        case 9: // TAMPILKAN SEMUA NOVEL 
          consoleUtility.clearConsole();
          displayer.displayAllNovel(repoBook.listBook);
          stdout.write("Tekan sembarang untuk kembali! ");
          stdin.readLineSync();
          break;
        case 10: // TAMPILKAN SEMUA COMIC 
          consoleUtility.clearConsole();
          displayer.displayAllComic(repoBook.listBook);
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
        case 1: // KONDISI BOOK MENU
          consoleUtility.printTitle(char: '=', title: "Book Menu Searching");          
          break;
        case 2: // KONDISI AUTHOR MENU
          consoleUtility.printTitle(char: '=', title: "Author Menu Searching");          
          break;
        case 3: // KONDISI PUBLISHER MENU 
          consoleUtility.printTitle(char: '=', title: "Author Menu Searching");          
          break;
        case 0: // KONDISI EXIT          
          isExit = true;
          break;
        default:
      }
    } while (!isExit);
  }
}