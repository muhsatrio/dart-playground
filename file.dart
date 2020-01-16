import 'dart:math';

// Section 1

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

// Section 2

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

// Section 3

abstract class Shape {
  num get area;
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}

Shape shapeFactory(String type) {
  if (type=='circle') {
    return Circle(2);
  }
  if (type == 'square') {
    return Square(2);
  }
  throw 'Can\'t create $type';
}

// Section 4

String scream(int length) => "A${'a' * length}";

void main() {
//   Section 1
  print("Section 1");
  var bike = Bicycle(2, 1);
  bike.speedUp(5);
  print(bike);
  
//   Section 2
  print("Section 2");
  print(Rectangle(origin: const Point(10, 20), width: 100, height: 200));
  print(Rectangle(origin: const Point(10, 10)));
  
//   Section 3
  print("Section 3");
  final circle = shapeFactory('circle');
  final square = shapeFactory('square');
  print(circle.area);
  print(square.area);
  
//   Section 4
  print("Section 4");
  final values = [1, 2, 3, 4, 5];
  values.skip(2).map(scream).forEach(print);
}