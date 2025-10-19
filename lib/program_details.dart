import 'package:flutter/material.dart';
import '../program.dart';

class ProgramDetailsScreen extends StatelessWidget {
  final Program program;

  const ProgramDetailsScreen({super.key, required this.program});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Program Details')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(program.title,
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(program.date),
            const SizedBox(height: 16),
            Text(program.description),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: Colors.black),
              child: const Text('Register for Program'),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50)),
              child: const Text('Give Feedback'),
            ),
          ],
        ),
      ),
    );
  }
}
