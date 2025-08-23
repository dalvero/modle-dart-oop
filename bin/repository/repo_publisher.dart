import '../parents/publisher.dart';

class RepoPublisher {
  final List<Publisher> listPublisher;

  RepoPublisher() : listPublisher =  _setAllPublisher();

  static List<Publisher> _setAllPublisher(){
    return [
      // PUBLISHER
      Publisher("Bloomsbury", "United Kingdom", 30),
      Publisher("Gramedia", "Indonesia", 50),
      Publisher("Mizan", "Indonesia", 25),
      Publisher("Shueisha", "Japan", 25),
      Publisher("Elex Media Komputindo", "Indonesia", 12),
      Publisher("Gramedia Pustaka Utama", "Indonesia", 15),
      Publisher("Lion Hudson", "England", 15),
      Publisher("O Reilly Media", "United State", 30),
      Publisher("Harper One", "United State", 25)
    ];
  }

  // FUNCTION UNTUK MENCARI PUBLISHER BERDASARKAN NAMA LENGKAP
  Publisher findPublisherByFullName(String fullName) {    
    for (var publisher in listPublisher) {            
      if (publisher.publisherName == fullName) {
        return publisher;
      }
    }
    return Publisher("Not Found", "-", 0); // JIKA PUBLISHER TIDAK DITEMUKAN
  }
}