import 'package:flutter/material.dart';

class MedicineDetailScreen extends StatelessWidget {
  const MedicineDetailScreen({super.key});

  // One row of detail: icon + label + value
  Widget _infoRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFF1F7A8C)),
          const SizedBox(width: 14),
          Expanded(
            child: Text(label,
                style: const TextStyle(fontSize: 15, color: Colors.grey)),
          ),
          Text(value,
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Medicine Details')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Medicine image
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/images/medicine.png',
                    width: 140, height: 140, fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 16),
            const Center(
              child: Text('Panadol 500 mg',
                  style:
                      TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 4),
            const Center(
              child: Text('Pain relief tablet',
                  style: TextStyle(color: Colors.grey)),
            ),
            const SizedBox(height: 20),

            // Details card
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14)),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    _infoRow(Icons.scale, 'Dosage', '500 mg'),
                    const Divider(),
                    _infoRow(Icons.repeat, 'Frequency', 'Twice daily'),
                    const Divider(),
                    _infoRow(Icons.access_time, 'Next dose', '8:00 AM'),
                    const Divider(),
                    _infoRow(Icons.restaurant, 'Food', 'After food'),
                    const Divider(),
                    _infoRow(Icons.inventory_2, 'Remaining', '12 tablets'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Note
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: const Color(0xFFFFF8E1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.info_outline, color: Colors.orange),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      'Do not take more than 4 tablets in 24 hours. '
                      'Consult your doctor or pharmacist if unsure.',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Action buttons (look only)
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.check_circle),
                    label: const Text('Taken'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF1F7A8C),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.snooze),
                    label: const Text('Snooze'),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}