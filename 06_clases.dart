void main() {
  final Hero spiderMan = Hero(name: 'SpiderMan', power: 'Spider sense');
  print(spiderMan);
  print(spiderMan.name);
  print(spiderMan.power);

  final Map<String, dynamic> spiderManMap = {
    'name': 'SpiderMan',
    'power': 'Spider sense'
  };

  final Hero spiderManFromMap = Hero.fromJson(spiderManMap);
  print(spiderManFromMap);
}

class Hero {
  String name;
  String power;

  Hero({required this.name, this.power = 'Sin poder'});

  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'Sin nombre',
        power = json['power'] ?? 'Sin poder';

@override
  String toString() {
    return 'name: $name, power: $power';
  }
}
