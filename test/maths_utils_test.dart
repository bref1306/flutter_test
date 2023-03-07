import 'package:app_test/maths_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("check for 2 numbers addition", () {
    // Arrange
    int a = 10;
    int b = 10;

    // Act
    var sum = add(a, b);

    // Assert
    expect(sum, 20);
  });  
}