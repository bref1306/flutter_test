import 'package:app_test/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Should have one text field to collect user email id', (WidgetTester tester) async {
    //Arrange
    await tester.pumpWidget(
      const MaterialApp(
        home: LoginScreen()
      )
    );

    //Act
    Finder usernameField = find.byKey(Key('email_id'));

    //Assert
    expect(usernameField, findsOneWidget);
  });

  testWidgets('Should have one text field to collect password', (WidgetTester tester) async {
    //Arrange
    await tester.pumpWidget(
      const MaterialApp(
        home: LoginScreen()
      )
    );

    //Act
    Finder passwordField = find.byKey(Key('password'));

    //Assert
    expect(passwordField, findsOneWidget);
  });
}