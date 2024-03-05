abstract class Animal {}

abstract class Mammal extends Animal {}

abstract class Bird extends Animal {}

abstract class Fish extends Animal {}

mixin Flyer {
  void fly() => print('Volando');
}

mixin Walker {
  void walk() => print('Caminando');
}

mixin Swimmer {
  void swim() => print('Nadando');
}

class Dolphin extends Mammal with Swimmer {

}

class Bat extends Mammal with Flyer, Walker {

}

class Cat extends Mammal with Walker {

}

class Dove extends Bird with Flyer, Walker {

}

class Shark extends Fish with Swimmer {

}

class Duck extends Bird with Flyer, Walker, Swimmer {

}

void main() {
  final dolphin = Dolphin();
  dolphin.swim();

  final bat = Bat();
  bat.fly();
  bat.walk();

  final cat = Cat();
  cat.walk();

  final dove = Dove();
  dove.fly();
  dove.walk();

  final shark = Shark();
  shark.swim();

  final duck = Duck();
  duck.fly();
  duck.walk();
  duck.swim();
}


