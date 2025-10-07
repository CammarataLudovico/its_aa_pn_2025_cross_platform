import 'package:clinic/animal.dart';

class Clinic {

  Clinic({
    required this.name,
    required this.address,
    required this.animals,
  });

  String name;
  String address;
  List<Animal> animals;
}