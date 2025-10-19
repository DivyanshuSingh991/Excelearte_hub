import 'package:flutter/material.dart';
import '../program.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {
          if (index == 1) Navigator.pushNamed(context, '/programList');
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Welcome, Learner!',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(235, 236, 238, 207),
                    borderRadius: BorderRadius.circular(12)),
                height: 150,
                alignment: Alignment.center,
                    
                child: const Text('Stay updated with the latest learning opportunities!',
                textAlign: TextAlign.center),
                
              ),
              const SizedBox(height: 20),
              const Text('Featured Programs',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  itemCount: dummyPrograms.length,
                  itemBuilder: (context, index) {
                    final program = dummyPrograms[index];
                    return Card(
                      child: ListTile(
                        title: Text(program.title),
                        subtitle: Text('${program.date} | ${program.category}'),
                        trailing: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              '/programDetails',
                              arguments: program,
                            );
                          },
                          child: const Text('View Details'),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
