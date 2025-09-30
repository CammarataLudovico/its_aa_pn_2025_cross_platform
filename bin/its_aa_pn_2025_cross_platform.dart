import 'package:its_aa_pn_2025_cross_platform/animal.dart';
import 'package:its_aa_pn_2025_cross_platform/cammarata.dart';
import 'package:its_aa_pn_2025_cross_platform/its_aa_pn_2025_cross_platform.dart' as its_aa_pn_2025_cross_platform;

void main(List<String> arguments) {
  final yourAge = 19;
  // final == const in js
  final myAge = 32;
  final averAge = average(yourAge, myAge);
  print('Hello world: ${its_aa_pn_2025_cross_platform.calculate()}!');
  print("Average: $averAge");

  Animal.register(petName: "Mila", bornAt: DateTime(2020, 03, 12), ownerName: "Ludo");
  Animal.register(petName: "Lola", bornAt: DateTime(2019, 03, 12), ownerName: "Ludo");

  for(final animal in list) {

    print("Your animal name is: ${animal.name}");
    print("Owner name: ${animal.ownerName}");
    print ("It have ${animal.getYears()} years");
    print("Last visit: ${animal.getDaysSinceLastVisit()} days");
  }


  /*print("Your animal name is: ${mila.name}");
  print("Owner name: ${mila.ownerName}");
  print ("It have ${mila.getYears()} years");
  print("Last visit: ${mila.getDaysSinceLastVisit()} days");*/
}
