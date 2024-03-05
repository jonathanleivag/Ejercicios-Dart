void main() {
  emitNumbers().listen((int x) {
    print(x);
  });
}

Stream<int> emitNumbers () {
  return Stream.periodic(const Duration(seconds: 1), (int x) => x).take(5);
}