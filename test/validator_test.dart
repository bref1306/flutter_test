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

  test('Validate for at least 8 characters for password', () {
    //Arrange & Act
    String? result = Validator.validatePassword('pass');

    //Assert
    expect(result, 'Please enter at least 8 characters');
  });   

  test('Validate for good lenght password', () {
    //Arrange & Act
    String? result = Validator.validatePassword('password');

    //Assert
    expect(result, null);
  });   
}