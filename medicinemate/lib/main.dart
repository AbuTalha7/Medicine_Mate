import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';
import 'screens/medicine_detail_screen.dart';
import 'screens/add_medicine_screen.dart';

void main() {
  runApp(const MedicineMateApp());
}

class MedicineMateApp extends StatelessWidget {
  const MedicineMateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MedicineMate',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1F7A8C)),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1F7A8C),
          foregroundColor: Colors.white,
        ),
        useMaterial3: true,
      ),
      home: const AddMedicineScreen(),
    );
  }
}