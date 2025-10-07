import 'package:clinic/animal.dart';

class Person {

  Person({
    required this.first_name,
    required this.last_name,
    required this.birthDate,
    required this.animals,
  });

  String first_name;
  String last_name;
  DateTime birthDate;
  List<Animal> animals;
}