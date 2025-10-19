class Program {
  final String title;
  final String description;
  final String duration;
  final String date;
  final String category;

  Program({
    required this.title,
    required this.description,
    required this.duration,
    required this.date,
    required this.category,
  });
}

List<Program> dummyPrograms = [
  Program(
    title: 'Advanced Javascript Course',
    description:
        'Master modern Javascript concepts and frameworks for web development.',
    duration: '8 weeks',
    date: 'Nov 15, 2025',
    category: 'Technology',
  ),
  Program(
    title: 'UX Design Principles',
    description:
        'Learn user experience design fundamentals and create intuitive interfaces.',
    duration: '6 weeks',
    date: 'Oct 10, 2025',
    category: 'Design',
  ),
  Program(
    title: 'Mobile App Development',
    description:
        'Build native and cross-platform mobile applications from scratch.',
    duration: '10 weeks',
    date: 'Dec 2, 2025',
    category: 'Technology',
  ),
];
