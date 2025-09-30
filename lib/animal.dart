class Animal {
  Animal({
    required this.name,
    required this.bornAt,
    required this.ownerName,
    required this.lastVisitAt,
  });

  factory Animal.register ({
    required String petName,
    required DateTime bornAt,
    required String ownerName,
    }) {
      return Animal(
        name: petName, 
        bornAt: bornAt, 
        ownerName: ownerName, 
        lastVisitAt: DateTime.now());
    }

  final String name;
  final DateTime bornAt;
  final String ownerName;
  final DateTime lastVisitAt;

  int getYears() {
    final now = DateTime.now();
    return now.year - bornAt.year;
  }

  int getDaysSinceLastVisit() {
    final today = DateTime.now();
    final difference = today.difference(lastVisitAt);
    return difference.inDays;
  }
}

Animal register() { // metodo della classe Animal, per registrare un nuovo animale
  return Animal(
    name: "Mila", 
    bornAt: DateTime(2020, 03, 12), 
    ownerName: "Ludo",
    lastVisitAt: DateTime.now(),
    );
}