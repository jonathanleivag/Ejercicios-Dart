void main() {
  emitNumbers().listen((int x) {
    print(x);
  });
}

Stream<int> emitNumbers () async* {
  final List<int> numbers = [1, 2, 3, 4, 5];
  for (final int number in numbers) {
    await Future.delayed(const Duration(seconds: 1));
    yield number;
  }
}