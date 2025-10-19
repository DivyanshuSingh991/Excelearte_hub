import 'package:flutter/material.dart';
import 'signin.dart';
import 'home_page.dart';
import 'programlisting.dart';
import 'program_details.dart';
import 'program.dart';

void main() {
  runApp(const MyApp()); // ✅ matches the test file
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Excelerate Hub',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
        scaffoldBackgroundColor: Colors.grey[100],
      ),
      routes: {
        '/': (context) =>  SignInScreen(),
        '/home': (context) => const HomeScreen(),
        '/programList': (context) => const ProgramListScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/programDetails') {
          final program = settings.arguments as Program;
          return MaterialPageRoute(
            builder: (_) => ProgramDetailsScreen(program: program),
          );
        }
        return null;
      },
    );
  }
}
