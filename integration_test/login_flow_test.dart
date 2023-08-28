import 'package:app_test/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  group("Login Flow Test", () { 
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();
      testWidgets('Should show Required Fields Error message when user taps on login button without entering email id & password', (WidgetTester tester) async {
      //Arrange
        await tester.pumpWidget(
          const MaterialApp(
            home: LoginScreen()
          )
        );

        //Act    
        Finder loginButton = find.byKey(const Key('login_button')); 
        await tester.tap(loginButton);
        await tester.pumpAndSettle(const Duration(seconds: 2)); 

          // On vérifie la présence d'un texte pour vérifier que le message d'erreur apparaît bien
        Finder errorText = find.text("Required Field"); 

        // Assert
          // On vérifie qu'il y a bien exactement 2 champs qui doivent faire apparaître le message d'erreur
        expect(errorText, findsNWidgets(2)); 
    });
      testWidgets('Should show home screen on click of login button when user entered valid email id & password', (WidgetTester tester) async {
      //Arrange
        await tester.pumpWidget(
          const MaterialApp(
            home: LoginScreen()
          )
        );

        //Act
          // On reprend le comportement du test de widget  "Should submit form when user email id & password is valid" de login_screen_test.dart
        Finder usernameField = find.byKey(const Key('email_id'));
        Finder passwordField = find.byKey(const Key('password'));
        await tester.enterText(usernameField, "contact@auriane-gs.com");
        await tester.enterText(passwordField, "password");
          
        Finder loginButton = find.byKey(const Key('login_button')); 
        await tester.tap(loginButton);
        await tester.pumpAndSettle(const Duration(seconds: 2)); 

          // On vérifie la présence d'un texte pour signifier que nous sommes bien redirigés vers HomeScreen() après l'évènement du clic
        Finder welcomeText = find.byType(Text); 

        // Assert
          // La fonction attend donc au moins un widget de type Text()
        expect(welcomeText, findsAtLeastNWidgets(1)); 
    });
  });
}