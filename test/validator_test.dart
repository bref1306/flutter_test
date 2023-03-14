import 'package:app_test/validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Validate for empty email id', () {
    //Arrange & Act
    String? result = Validator.validateEmail('');

    //Assert
    expect(result, 'Required Field');
  });  
  test('Validate for invalid email id', () {
    //Arrange & Act
    String? result = Validator.validateEmail('hfhdfss');

    //Assert
    expect(result, 'Please enter a valid email id');
  });  

  test('Validate for valid email id', () {
    //Arrange & Act
    String? result = Validator.validateEmail('auriane@uccellolabs.com');

    //Assert
    expect(result, null);
  });  
}