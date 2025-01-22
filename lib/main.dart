import 'package:flutter/material.dart';
import 'package:flutter_weather/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  runApp(const MyApp());
  await dotenv.load(fileName: ".env");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Apply Google Font to the overall app theme
        textTheme: GoogleFonts.karlaTextTheme(
          Theme.of(context).textTheme, // Merges with the default TextTheme
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
