import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:its_aa_pn_2025_cross_platform/animal.dart';

Iterable<Animal> getAnimalStartingWith(IList<Animal> animals) {
  return animals.where((element) {
      return (element.name.toUpperCase()).startsWith("L");
    });
}

Iterable<Animal> addAnimal(IList <Animal> list, Animal animal) {
  return list.add(animal);
}

Iterable<Animal> removeAnimal(IList <Animal> list, Animal animal) {
  return list.remove(animal);
}

Iterable<Animal> updateAnimalName(IList <Animal> list, Animal oldAnimal, String newName) {
// Rimuove oldAnimal e aggiunge uno nuovo con il nuovo nome

  return list.replaceAllWhere(
    (element) => element.name == oldAnimal.name,
      Animal(
        name: newName, 
        bornAt: oldAnimal.bornAt, 
        ownerName: oldAnimal.ownerName, 
        lastVisitAt: oldAnimal.lastVisitAt)
  );
  /*list.remove(oldAnimal);
  return list.add(
    Animal(
      name: newName, 
      bornAt: oldAnimal.bornAt, 
      ownerName: oldAnimal.ownerName, 
      lastVisitAt: oldAnimal.lastVisitAt
    )
  );*/
}