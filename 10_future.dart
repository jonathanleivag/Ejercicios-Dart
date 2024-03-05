Future<String> httpGet (String url) {
  return Future.delayed(const Duration(seconds: 3), () => 'Hola Mundo - 4 segundos');
}

void main () {
  print('Estamos a punto de pedir datos');
  httpGet('https://api.nasa.com/aliens').then((data) {
    print(data);
  });
  print('Ultima línea');
}