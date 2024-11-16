import 'dart:io';
import 'dart:math';

void main() {
  double a, b, c, delta;

  // Nhập hệ số a
  do {
    print('Nhập hệ số a (a khác 0): ');
    a = double.parse(stdin.readLineSync()!);
    if (a == 0) {
      print('Hệ số a phải khác 0. Vui lòng nhập lại!');
    }
  } while (a == 0);

  // Nhập hệ số b và c
  print('Nhập hệ số b: ');
  b = double.parse(stdin.readLineSync()!);
  print('Nhập hệ số c: ');
  c = double.parse(stdin.readLineSync()!);

  // Tính delta
  delta = b * b - 4 * a * c;

  // Giải phương trình dựa trên giá trị của delta
  if (delta > 0) {
    double x1 = (-b + sqrt(delta)) / (2 * a);
    double x2 = (-b - sqrt(delta)) / (2 * a);
    print('Phương trình có 2 nghiệm phân biệt:');
    print('x1 = $x1');
    print('x2 = $x2');
  } else if (delta == 0) {
    double x = -b / (2 * a);
    print('Phương trình có nghiệm kép: x = $x');
  } else {
    print('Phương trình vô nghiệm.');
  }
}
