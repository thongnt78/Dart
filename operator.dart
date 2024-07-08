void main(){
Point p1 = Point(10, 20);
Point p2 = Point(-5, -10);
Point sum = p1 + p2;
print('$p1 + $p2 = $sum');
}
class Point{
  int x;
  int y;
  Point(this.x,this.y);

  Point operator +(Point other) => Point(x + other.x, y + other.y);

  @override
  String toString() {
    return 'Point{x: $x, y: $y}';
  }
}