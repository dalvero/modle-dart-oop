class Author {
  String firstName;
  String lastName;
  String country;
  int age;

  Author(this.firstName, this.lastName, this.country, this.age);

  String getFullName() => "$firstName $lastName";
}