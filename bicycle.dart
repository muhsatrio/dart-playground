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



void main() {
  var bike = Bicycle(2, 1);
  bike.speedUp(5);
  print(bike);
}
