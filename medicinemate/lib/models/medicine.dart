class Medicine {
  final String name;
  final String dosage;
  final String frequency;
  final String time;
  final String foodInstruction;
  final int remainingStock;

  const Medicine({
    required this.name,
    required this.dosage,
    required this.frequency,
    required this.time,
    required this.foodInstruction,
    required this.remainingStock,
  });
}