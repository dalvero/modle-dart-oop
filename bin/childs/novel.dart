import '../parents/book.dart';
import '../childs/novelis.dart';
import '../parents/author.dart';
import '../parents/publisher.dart';

class Novel extends Book{
  String genre;

  // MENGGUNAKAN INITIALIZIER LIST UNTUK PRICE
  Novel(super.bookCode, super.title, super.author, super.publisher, this.genre) 
  : super( price : _calculatePrice(publisher, author));
    
  static double _calculatePrice(Publisher publisher, Author author){
    List<String> rating = ["New Commer", "Good", "Best Seller"];
    List<double> cost = [1.25, 1.35, 1.5];
    for (var i = 0; i < rating.length; i++) {
      // CHECK AND CASTING OBJEK AUTHOR TO NOVELIS
      if (author is Novelis) {
        Novelis novelis = author;
        if (novelis.rating == rating[i]) {
          return publisher.productionCost * cost[i];
        }
      }
    }
    return 0;
  }

}