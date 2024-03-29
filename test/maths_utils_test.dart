import 'package:app_test/maths_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('test Maths Utils', () { 
     test("check for 2 numbers addition", () {
      // Arrange
      int a = 10;
      int b = 10;

      // Act
      var sum = add(a, b);

      // Assert
      expect(sum, 20);
    });  

    test("check for 2 numbers substraction", () {
      // Arrange
      int a = 10;
      int b = 10;

      // Act
      var sum = substract(a, b);

      // Assert
      expect(sum, 20);
    });  

    test("check for 2 numbers multiply", () {
      // Arrange
      int a = 10;
      int b = 10;

      // Act
      var sum = substract(a, b);

      // Assert
      expect(sum, 20);
    });
  });  
}