import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:plz/StartPage.dart';
import 'package:plz/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:plz/firstScreen(not use).dart';
import 'firebase_options.dart';
import 'testauth.dart';
import 'homepage(not use).dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
              const EdgeInsets.all(24),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(Color(0xff8887ea)),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
        ),
      ),
      // home: FirstScreen(),
      home: Start(),
    );
  }
}



