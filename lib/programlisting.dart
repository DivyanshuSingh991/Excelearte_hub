import 'package:flutter/material.dart';
import '../program.dart';

class ProgramListScreen extends StatefulWidget {
  const ProgramListScreen({super.key});

  @override
  State<ProgramListScreen> createState() => _ProgramListScreenState();
}

class _ProgramListScreenState extends State<ProgramListScreen> {
  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    // Filter programs based on search query
    final filteredPrograms = dummyPrograms.where((program) {
      final titleLower = program.title.toLowerCase();
      final categoryLower = program.category.toLowerCase();
      final queryLower = searchQuery.toLowerCase();
      return titleLower.contains(queryLower) || categoryLower.contains(queryLower);
    }).toList();

    return Scaffold(
      appBar: AppBar(title: const Text('All Programs')),
      body: Column(
        children: [
          // 🔍 Search bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search programs...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
              },
            ),
          ),

          // 📜 Filtered list
          Expanded(
            child: ListView.builder(
              itemCount: filteredPrograms.length,
              itemBuilder: (context, index) {
                final program = filteredPrograms[index];
                return Card(
                  margin: const EdgeInsets.all(8),
                  child: ListTile(
                    title: Text(program.title),
                    subtitle: Text('${program.duration} | ${program.category}'),
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
    );
  }
}
