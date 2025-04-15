class Point {
  int x = 0;
  int y = 0;

  Point() {
    this.x = 0;
    this.y = 0;
  }

  Point.createInstance(int x, int y) {
    this.x = x;
    this.y = y;
  }

  void setLocation(int xValue, int yValue) {
    this.x = xValue;
    this.y = yValue;
  }

  Point clone() {
    return Point.createInstance(this.x, this.y);
  }
}

void main(List<String> args) {
  Point a, b, c;
  a = Point();
  print('Titik a terletak di koordinat (${a.x}, ${a.y})');
  b = Point.createInstance(2, 3);
  print('Titik b terletak di koordinat (${b.x}, ${b.y})');
  c = b.clone();
  print('Titik c terletak di koordinat (${c.x}, ${c.y})');
}


