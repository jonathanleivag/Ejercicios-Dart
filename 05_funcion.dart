void main() {
  print(greetEveryone());
  print(greetSomeone());
  print(addTwoNumbers(1, 2));
  print(addTwoNumbers2(3, 4));
  print(addTwoNumbers3(5));
  print(greetPerson(message: 'Holita,' ,name: 'Jonathan'));
}

String greetEveryone() {
  return "Hola a todos";
}

String greetSomeone() => "Hola a alguien";

int addTwoNumbers(int a, int b) {
  return a + b;
}

int addTwoNumbers2(int a, int b) => a + b;

int addTwoNumbers3(int a, [int b = 0]) => a + b;

String greetPerson ({required String name, String message = 'Hola,'}) => "$message $name";
