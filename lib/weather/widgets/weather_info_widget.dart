// Weather Info Card Widget
import 'package:flutter/material.dart';

class WeatherInfoCard extends StatelessWidget {
  final IconData icon;
  final String label;

  const WeatherInfoCard({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 20, color: Colors.blue),
        const SizedBox(width: 4),
        Text(label, style: const TextStyle(fontSize: 16, color: Colors.black)),
      ],
    );
  }
}
