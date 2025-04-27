class Point {
  int _x = 0;
  int _y = 0;

  Point (); 

  Point.createInstance(int x, int y) {
    _x = x;
    _y = y;
  }

  void setLocation (int xValue, int yValue) {
    _x = xValue;
    _y = yValue;
  }

  set x(int Value) {
    _x = Value;
  
  }
  set y(int Value) {
    _y = Value;
  }

  int get x {
    return _x;
  }

  int get y {
    return _y;
  }
}

void main (List<String> args) {
  Point a;
  a = Point();
  a.x = 2;
  a.y = 3;
  print('Titik a terletak di koordinat (${a.x}, ${a.y})');
}