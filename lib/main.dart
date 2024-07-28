import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_list/widgets/grocery_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Groceries',
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 221, 161, 105),
          brightness: Brightness.dark,
          surface: const Color.fromARGB(255, 148, 69, 24),
        ),
        textTheme: GoogleFonts.rubikTextTheme(),
        scaffoldBackgroundColor: const Color.fromARGB(255, 36, 36, 36),
      ),
      home: const GroceryList(),
    );
  }
}
