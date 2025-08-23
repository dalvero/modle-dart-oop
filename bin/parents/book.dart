import '../parents/author.dart';
import '../parents/publisher.dart';

class Book {
  String bookCode;
  String title;
  Author author;
  Publisher publisher;
  double price;

  // MENGGUNAKAN INITIALIZIER LIST UNTUK PRICE
  Book(this.bookCode, this.title, this.author, this.publisher, {required double price}) 
  : price = _calculatePrice(publisher);
    
  
  static double _calculatePrice(Publisher publisher){
    return publisher.productionCost * 120/100;
  }

}