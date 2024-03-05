void main() {
  final Square square = Square(10);
  print('El area del cuadrado es: ${square.area()}');
  square.side = 20;
  print('El area del cuadrado es: ${square.area()}');
  square.side = 0;
  print('El area del cuadrado es: ${square.area()}');
  square.side = -10;
  print('El area del cuadrado es: ${square.area()}');


}

class Square {
  // parametros privados
  double _side;

  Square(this._side): assert(_side > 0, 'El lado no puede ser menor o igual a 0');

  double get side => _side;
  void set side(double value) {
    if (value <= 0) throw 'El lado no puede ser menor o igual a 0';
    _side = value;
  }

  double area() {
    return _side * _side;
  }
}
