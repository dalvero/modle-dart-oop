import '../parents/author.dart';

class Novelis extends Author{
  bool serial;
  String rating;

  Novelis(super.firstName, super.lastName, super.country, super.age, this.serial, this.rating);
  
}