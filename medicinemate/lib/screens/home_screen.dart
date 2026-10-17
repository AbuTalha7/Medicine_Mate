import 'package:flutter/material.dart';
import '../models/medicine.dart';
import '../widgets/medicine_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Dummy data (real data comes in Assignment 4)
  final List<Medicine> medicines = const [
    Medicine(
        name: 'Panadol',
        dosage: '500 mg',
        frequency: 'Twice daily',
        time: '8:00 AM',
        foodInstruction: 'After food',
        remainingStock: 12),
    Medicine(
        name: 'Insulin',
        dosage: '10 units',
        frequency: 'Once daily',
        time: '9:00 AM',
        foodInstruction: 'Before food',
        remainingStock: 5),
    Medicine(
        name: 'Vitamin D',
        dosage: '1000 IU',
        frequency: 'Once daily',
        time: '1:00 PM',
        foodInstruction: 'With food',
        remainingStock: 30),
    Medicine(
        name: 'Metformin',
        dosage: '500 mg',
        frequency: 'Twice daily',
        time: '8:00 PM',
        foodInstruction: 'After food',
        remainingStock: 18),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Today's Medication"),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.notifications),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Banner image with greeting text on top
            Stack(
              children: [
                Image.asset(
                  'assets/images/banner.png',
                  width: double.infinity,
                  height: 160,
                  fit: BoxFit.cover,
                ),
                const Positioned(
                  left: 20,
                  top: 40,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Good Morning, Abu Talha',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 6),
                      Text('4 medicines scheduled today',
                          style: TextStyle(color: Colors.white70)),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14),

            // Streak row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: const [
                  Icon(Icons.local_fire_department, color: Colors.orange),
                  SizedBox(width: 6),
                  Expanded(
                    child: Text('5-day streak! Keep it going',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600)),
                  ),
                  Icon(Icons.emoji_events, color: Colors.amber),
                ],
              ),
            ),
            const SizedBox(height: 16),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text('Schedule',
                  style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 6),

            // The reusable card, used once per medicine (4 times)
            ...medicines.map((m) => MedicineCard(
                  name: m.name,
                  dosage: m.dosage,
                  frequency: m.frequency,
                  time: m.time,
                  foodInstruction: m.foodInstruction,
                  remainingStock: m.remainingStock,
                )),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}