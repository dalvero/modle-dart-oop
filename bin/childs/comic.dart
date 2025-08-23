import '../parents/book.dart';
import '../childs/mangaka.dart';
import '../parents/author.dart';
import '../parents/publisher.dart';

class Comic extends Book{
  bool volumeSeries;
  double tax;

  // MENGGUNAKAN INITIALIZIER LIST UNTUK PRICE
  Comic(super.bookCode, super.title, super.author, super.publisher, this.volumeSeries, this.tax) 
  : super( price :  _calculatePrice(publisher, author, volumeSeries));
  
  
  static double _calculatePrice(Publisher publisher, Author author, bool volumeSeries){
    List<String> rating = ["New Commer", "Good", "Best Seller"];
    List<double> trueCost = [1.35, 1.45, 1.5]; // JIKA VOLUME SERIES TRUE
    List<double> falseCost = [1.25, 1.3, 1.4]; // JIKA VOLUME SERIES FALSE:

    for (var i = 0; i < rating.length; i++) {
      // CHECK AND CASTING OBJEK AUTHOR TO MANGAKA
      if (author is Mangaka) {
        Mangaka mangaka = author; 
        if (mangaka.rating == rating[i]) {
          if (volumeSeries) {
            return publisher.productionCost * trueCost[i];
          } else {
            return publisher.productionCost * falseCost[i];
          }
        }
      }      
    }
    return 0;
  }
  
}