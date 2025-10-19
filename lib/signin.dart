import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(radius: 40, backgroundColor: Colors.grey),
            const SizedBox(height: 20),
            const Text('Excelerate_Hub',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 30),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: 'email@domain.com',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                backgroundColor: Colors.black,
              ),
              onPressed: () {
                if (emailController.text.isNotEmpty) {
                  Navigator.pushReplacementNamed(context, '/home');
                }
              },
              child: const Text('Continue'),
            ),
            const SizedBox(height: 10),
            const Text('or'),
            const SizedBox(height: 10),
            OutlinedButton.icon(
              icon: const Icon(Icons.g_mobiledata),
              label: const Text('Continue with Google'),
              onPressed: () {},
            ),
            OutlinedButton.icon(
              icon: const Icon(Icons.apple),
              label: const Text('Continue with Apple'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
