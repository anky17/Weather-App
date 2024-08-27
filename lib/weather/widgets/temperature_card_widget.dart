// Temperature Graph Widget
import 'package:flutter/material.dart';

class TemperatureWidget extends StatelessWidget {
  const TemperatureWidget(
      {super.key, required this.quaterTime, required this.temp});

  final String quaterTime, temp;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text(
              quaterTime,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 4),
            Text(
              temp,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        // const SizedBox(width: 20),
      ],
    );
  }
}
