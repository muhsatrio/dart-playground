import 'dart:math';

class Bicycle {
  int cadence;
  int _speed = 0;
  int gear;
  int get speed => _speed;
  
  Bicycle(int cadence, int gear) {
    this.cadence = cadence;
//     this.speed = speed;
    this.gear = gear;
  }
  
  void applyBrake(int decrement) {
  _speed -= decrement;
}
  
  void speedUp(int increment) {
    _speed += increment;
  }
  
  @override
  String toString() => 'Bicycle: $speed mph';
}

class Rectangle {
  Point origin;
  int width;
  int height;
  Rectangle({
    this.origin = const Point(0, 0),
    this.width = 0,
    this.height = 0
  });
  
  @override
  String toString() => 'Origin: (${origin.x}, ${origin.y}), Width: $width, height: $height';
  
  
}



void main() {
  var bike = Bicycle(2, 1);
  bike.speedUp(5);
  print(bike);
  
  print(Rectangle(origin: const Point(10, 20), width: 100, height: 200));
  print(Rectangle(origin: const Point(10, 10)));
}
