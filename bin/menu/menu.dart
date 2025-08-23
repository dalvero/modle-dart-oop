import 'dart:io';

class Menu {
  // MAIN MENU
  List<String> mainMenu = [
    "Book", "Author", "Publisher"
  ];

  // BOOK MENU SEARCHING
  List<String> bookMenu = [
    "Cari data Book yang memiliki price paling murah.", 
    "Cari data Book yang memiliki price paling mahal.", 
    "Cari data Book berdasarkan range price.",
    "Cari Comic berdasarkan rating Mangaka.",
    "Cari Book berdasarkan Country dari Publishernya.",
    "Cari Book berdasarkan Country dari Authornya.",
    "Cari data Comic yang memiliki price paling mahal.",
    "Tampilkan semua Book.",
    "Tampilkan semua Novel.",
    "Tampilkan semua Comic."
  ];

  // AUTHOR MENU SEARCHING
  List<String> authorMenu = [
    "Cari data semua Mangaka.",
    "Cari data semua Author.",
    "Cari data semua Novelis.",
    "Cari Author berdasarkan range umur.",
    "Cari Author berdasarkan country."
  ];

  List<String> publisherMenu = [
    "Cari Publisher dengan production cost paling mahal.",
    "Cari Publisher dengan production cost paling murah."
  ];

  // PRINT MAIN MENU
  void printMenu(List<String> menu){
    for (var i = 0; i < menu.length; i++) {
      stdout.write("${i + 1}. ${menu[i]}");
      stdout.write("\n");
    }
    stdout.write("0. Exit");
    stdout.write("\n");
  }
}