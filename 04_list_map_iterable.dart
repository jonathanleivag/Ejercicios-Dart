void main() {
  final List<int> numbers = [1, 2, 2, 3, 4, 5, 5];

  print('lista original: $numbers');
  print('Largo de la lista: ${numbers.length}');
  print('Primer elemento: ${numbers[0]}');
  print('Primer elemento: ${numbers.first}');
  print('Ultimo elemento: ${numbers[numbers.length - 1]}');
  print('Ultimo elemento: ${numbers.last}');
  print('Buscar el 3: ${numbers.contains(3)}');
  print('Buscar el 6: ${numbers.contains(6)}');
  print('invertido: ${numbers.reversed}');

  final Iterable<int> invertidoNumero = numbers.reversed;
  print('invertidoNumero: $invertidoNumero');
  print('invertidoNumero a lista: ${invertidoNumero.toList()}');
  print('set: ${invertidoNumero.toSet()}');
  print('set a list: ${invertidoNumero.toSet().toList()}');

  final Iterable<int> numebersGreaterThat3 =
      numbers.where((int element) => element > 3);

      print('numebersGreaterThat3: $numebersGreaterThat3');
      print('numebersGreaterThat3 a lista: ${numebersGreaterThat3.toList()}');
      print('numebersGreaterThat3 a set: ${numebersGreaterThat3.toSet()}');
      print('numebersGreaterThat3 a set a lista: ${numebersGreaterThat3.toSet().toList()}');
}
