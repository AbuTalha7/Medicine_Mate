import 'package:flutter/material.dart';

class MedicineCard extends StatelessWidget {
  final String name;
  final String dosage;
  final String frequency;
  final String time;
  final String foodInstruction;
  final int remainingStock;

  const MedicineCard({
    super.key,
    required this.name,
    required this.dosage,
    required this.frequency,
    required this.time,
    required this.foodInstruction,
    required this.remainingStock,
  });

  @override
  Widget build(BuildContext context) {
    final bool lowStock = remainingStock < 10;

    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          children: [
            const CircleAvatar(
              radius: 26,
              backgroundColor: Color(0xFFE0F2F1),
              child: Icon(Icons.medication, color: Color(0xFF1F7A8C), size: 30),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$name  $dosage',
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text('$frequency  •  $foodInstruction'),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Icon(Icons.inventory_2,
                          size: 16,
                          color: lowStock ? Colors.red : Colors.grey),
                      const SizedBox(width: 4),
                      Text(
                        '$remainingStock left',
                        style: TextStyle(
                            color: lowStock ? Colors.red : Colors.grey[700]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                const Icon(Icons.access_time, color: Color(0xFF1F7A8C)),
                const SizedBox(height: 4),
                Text(time,
                    style: const TextStyle(fontWeight: FontWeight.w600)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}