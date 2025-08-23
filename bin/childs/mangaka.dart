import '../parents/author.dart';

class Mangaka extends Author {
  String rating;
  Mangaka(super.firstName, super.lastName, super.country, super.age, this.rating);  
}