void main() {
  final WindPlant windPlant = WindPlant(initialEnergy: 100);
  print('Energia inicial: ${windPlant.energyLeft}');
  print(chargePhone(windPlant));
  final NuclearPlant nuclearPlant = NuclearPlant(energyLeft: 1000);
  print(chargePhone(nuclearPlant));
}


double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) throw Exception('No hay suficiente energia');
  return plant.energyLeft - 10;
}

enum EnergyType { solar, wind, hydro, nuclear }

abstract class EnergyPlant {
  double energyLeft;
  EnergyType energyType;

  EnergyPlant({required this.energyLeft, required this.energyType});

  void generateEnergy(double amount);
}

class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy}): super(energyLeft: initialEnergy, energyType: EnergyType.wind);

  @override
  void generateEnergy(double amount) {
    if (amount > energyLeft) throw Exception('No hay suficiente energia');
    energyLeft -= amount;
    print('Generando $amount de energia eolica');
  }
}


class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  EnergyType energyType = EnergyType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void generateEnergy(double amount) {
    if (amount > energyLeft) throw Exception('No hay suficiente energia');
    energyLeft -= amount;
    print('Generando $amount de energia eolica');
  }

}
