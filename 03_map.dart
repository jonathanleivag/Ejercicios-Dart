void main () {
  final Map<String, dynamic> pokemon = {
    'name': 'Pikachu',
    'type': 'Electric',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['Thunderbolt', 'Quick Attack', 'Agility'],
    'sprites': <int, String>{
      1: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png',
      2: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/25.png'
    }
  };


  print(pokemon);
  print('Pokemon: ${pokemon['name']}');
  print('Type: ${pokemon['type']}');
  print('HP: ${pokemon['hp']}');
  print('Is alive: ${pokemon['isAlive']}');
  print('Abilities: ${pokemon['abilities']}');
  print('Sprites: ${pokemon['sprites'][2]}');
  print('Sprites: ${pokemon['sprites'][1]}');
}