import 'package:flutter/material.dart';

class HourlyWidget extends StatelessWidget {
  const HourlyWidget({
    super.key,
    required this.time,
    required this.temp,
    required this.icon,
  });

  final String time;
  final String temp;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text(time,
                style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            Icon(icon, size: 24, color: Colors.orange),
            const SizedBox(height: 4),
            Text(temp,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ],
        ),
        const SizedBox(width: 22),
      ],
    );
  }
}
