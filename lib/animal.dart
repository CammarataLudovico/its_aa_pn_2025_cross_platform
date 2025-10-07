import 'package:clinic/clinic.dart';
import 'package:clinic/person.dart';

class Animal {

  Animal({
    required this.name,
    required this.birthDate,
    required this.lastVisitAt,
    required this.owner,
    this.deathDate,
  });

  String name;
  DateTime birthDate;
  DateTime lastVisitAt;
  DateTime? deathDate;
  Person owner;
  Clinic clinic;
}