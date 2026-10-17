import 'package:flutter/material.dart';

class AddMedicineScreen extends StatelessWidget {
  const AddMedicineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Medicine')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Medicine Information',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),

            const TextField(
              decoration: InputDecoration(
                labelText: 'Medicine name',
                hintText: 'e.g. Panadol',
                prefixIcon: Icon(Icons.medication),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 14),

            // Dosage and stock side by side
            const Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Dosage',
                      hintText: '500 mg',
                      prefixIcon: Icon(Icons.scale),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Stock',
                      hintText: '30',
                      prefixIcon: Icon(Icons.inventory_2),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14),

            const TextField(
              decoration: InputDecoration(
                labelText: 'Frequency',
                hintText: 'e.g. Twice daily',
                prefixIcon: Icon(Icons.repeat),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 14),

            const TextField(
              decoration: InputDecoration(
                labelText: 'Time',
                hintText: 'e.g. 8:00 AM',
                prefixIcon: Icon(Icons.access_time),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 14),

            const TextField(
              decoration: InputDecoration(
                labelText: 'Food instruction',
                hintText: 'e.g. After food',
                prefixIcon: Icon(Icons.restaurant),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.save),
                label: const Text('Save Medicine',
                    style: TextStyle(fontSize: 16)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1F7A8C),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}