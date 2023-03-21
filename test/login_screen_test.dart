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

  testWidgets('Should have one button for login', (WidgetTester tester) async {
    //Arrange
    await tester.pumpWidget(
      const MaterialApp(
        home: LoginScreen()
      )
    );

    //Act
    Finder loginButton = find.byType(ElevatedButton);

    //Assert
    expect(loginButton, findsOneWidget);
  });

  testWidgets('Should show required Fields error message if user email id & password is empty', (WidgetTester tester) async {
    //Arrange
    await tester.pumpWidget(
      const MaterialApp(
        home: LoginScreen()
      )
    );

    //Act
    Finder loginButton = find.byKey(const Key('login_button')); // Il vaut mieux chercher par clé plutôt que par type
    await tester.tap(loginButton); // On simule le onTap() du bouton
    await tester.pumpAndSettle(); // On attend que les events/animations causés par onTap() se produise

    Finder errorTexts = find.text('Required Field');

    //Assert
    expect(errorTexts, findsNWidgets(2)); // On veut trouver au moins 2 widgets contenant les messages d'erreur
  });

  testWidgets('Should submit form when user email id & password is valid', (WidgetTester tester) async {
    //Arrange
    await tester.pumpWidget(
      const MaterialApp(
        home: LoginScreen()
      )
    );

    //Act
        // On simule l'insertion des identifiants dans les champs
    Finder usernameField = find.byKey(const Key('email_id'));
    Finder passwordField = find.byKey(const Key('password'));
    await tester.enterText(usernameField, "contact@auriane-gs.com"); // On insère un email valide
    await tester.enterText(passwordField, "password"); // On insère un mot de passe valide (au moins 8 caractères au vu du validator.dart)
        
        // On simule le onTap() du bouton de connexion après avoir entré ses identifiants
    Finder loginButton = find.byKey(const Key('login_button')); 
    await tester.tap(loginButton);
    await tester.pumpAndSettle(); 

    Finder errorTexts = find.text('Required Field');

    expect(errorTexts, findsNothing); // On s'attend à ce qu'il y ait aucune erreur donc aucun widget

  });
  
}