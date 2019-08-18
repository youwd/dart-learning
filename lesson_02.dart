/**函数、类与运算符 */
// bool isZero(int number) {
//   return number == 0;
// }
/**箭头函数表示 */
bool isZero(int number) => number == 0;

void printInfo(int number, Function check) {
  print("${number} is Zero: ${check(number)}");
}

void enable1Flags({bool blod, bool hidden = false}) => print("$blod,$hidden");
void enable1Flags2(bool blod, [bool hidden = false]) => print("$blod,$hidden");
main() {
  Function f = isZero;
  int x = 10;
  int y = 0;
  printInfo(x, f);
  printInfo(y, f);

  enable1Flags(blod: true);
  enable1Flags(hidden: false);
  enable1Flags2(true);

  print("类与接口：");
  var xxx = Vector();
  xxx
    ..x = 3
    ..y = 4
    ..z = 5; // 级联运算符，等同于xxx.x,xxx.y
  xxx.printInfo();

  var yyy = Coordinate();
  yyy.printInfo();
}

/**类与接口 */
class Point {
  num x = 0, y = 0;
  void printInfo() => print("$x,$y");
}

class Vector extends Point {
  num z = 0;
  @override // 重写了方法
  void printInfo() => print("$x,$y,$z");
}

class Coordinate implements Point {
  num x = 1, y = 2;
  void printInfo() => print("接口的实现：$x,$y");
}
