Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 3));
  return 'Hola Mundo - 3 segundos';
}

void main() async {
  try {
    print('Estamos a punto de pedir datos');
    String data = await httpGet('https://api.nasa.com/aliens');
    print(data);
    print('Ultima línea');
  } on Exception catch (e) {
    print('error: $e');
  } catch (e) {
    print('error: $e');
  } finally {
    print('Esto se ejecuta siempre');
  }
}
