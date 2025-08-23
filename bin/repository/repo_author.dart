import '../parents/author.dart';
import '../childs/novelis.dart';
import '../childs/mangaka.dart';

class RepoAuthor {
  // MENGGUNAKAN 'final' 
  final List<Author> listAuthor;

  // ACCES MODIFIER = private  
  RepoAuthor() : listAuthor = _setAllAuthor();

  // private UNTUK MEMBUAT DAN MENGEMBALIKAN List,
  // SEHINGGA KONSTRUKTOR MENJADI LEBIH BERSIH
  static List<Author> _setAllAuthor() {
    return [
      // AUTHOR
      Author("Haidar", "Musyafa", "Indoneisa", 30),
      Author("Bert", "Bates", "United State", 50),
      Author("Barry", "Burd", "United State", 52),
      Author("Mark", "Manson", "United State", 38),
      Author("Andi", "Susanto", "Indoneisa", 32),
      Author("Adi", "Sutanto", "Indoneisa", 27),

      // NOVELIS
      Novelis("J.K", "Rowling", "England", 57, true, "Best Seller"),
      Novelis("Tere", "Liye", "Indonesia", 35, true, "Best Seller"),
      Novelis("Dee", "Lestari", "Indonesia", 30, true, "Good"),
      Novelis("Faisal", "Syahreza", "Indonesia", 40, true, "New Commer"),
      Novelis("Julia", "Golding", "England", 41, false, "Best Seller"),

      // MANGAKA
      Mangaka("Masashi", "Kisimoto", "Japan", 48, "Best Seller"),
      Mangaka("Yoshihiro", "Togashi", "Japan", 56, "Good"),
      Mangaka("Eiichiro", "Oda", "Japan", 57, "Best Seller"),
      Mangaka("Rizki", "Anwar", "Indonesia", 25, "New Commer"),
      Mangaka("Yusuf", "Fadli", "Indonesia", 32, "New Commer"),
    ];
  }

  // FUNCTION UNTUK MENCARI AUTHOR BERDASARKAN NAMA LENGKAP
  Author findAuthorByFullName(String fullName) {    
    for (var author in listAuthor) {            
      if ("${author.firstName} ${author.lastName}" == fullName) {
        return author;
      }
    }
    return Author("Not", "Found", "-", 0); // JIKA TIDAK DITEMUKAN    
  }
}