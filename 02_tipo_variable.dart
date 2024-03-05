void main() {
  final String pokemon = "pikachu";
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ["Thunderbolt", "Quick Attack", "Agility"];
  final List<String> sprites = [
    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png",
    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/25.png"
  ];

// dynamic es igual a null
  dynamic errorMessage = "Error: Pokemon not found";
  errorMessage = true;
  errorMessage = [1, 2, 3, 4, 5, 6, 7];
  errorMessage = {1, 2, 3, 4, 5, 6, 7};
  errorMessage = {"name": "Pikachu", "hp": 100, "isAlive": true};
  errorMessage = () => true;
  errorMessage = null;

  print("""
  $pokemon
  HP: $hp
  Is alive: $isAlive
  Abilities: $abilities
  Sprites: $sprites
  Error message: $errorMessage
 """);
}
