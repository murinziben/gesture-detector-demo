import 'package:flutter/material.dart';

void main() {
  runApp(const TaskInboxApp());
}

class TaskInboxApp extends StatelessWidget {
  const TaskInboxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quick Task Inbox',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const TaskInboxScreen(),
    );
  }
}

// A simple blueprint for one task
class Task {
  final String title;
  final String due;
  bool isStarred;

  Task({required this.title, required this.due, this.isStarred = false});
}

class TaskInboxScreen extends StatefulWidget {
  const TaskInboxScreen({super.key});

  @override
  State<TaskInboxScreen> createState() => _TaskInboxScreenState();
}

class _TaskInboxScreenState extends State<TaskInboxScreen> {
  // Local data for the demo (no database needed)
  final List<Task> _tasks = [
    Task(title: 'Design login screen', due: 'Due: Tomorrow'),
    Task(title: 'Write unit tests', due: 'Due: Friday'),
    Task(title: 'Fix navigation bug', due: 'Due: Monday'),
    Task(title: 'Prepare demo video', due: 'Due: Next week'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Quick Task Inbox')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: _tasks.length,
        itemBuilder: (context, index) {
          final task = _tasks[index];

          return GestureDetector(
            // onTap runs when the row is tapped once.
            // Before this line existed, tapping did nothing (default = null).
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text(
                    task.title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(task.due),
                      const SizedBox(height: 8),
                      Text(task.isStarred ? 'Important task' : 'Normal priority'),
                    ],
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Close'),
                    ),
                  ],
                ),
              );
            },
            child: Card(
              margin: const EdgeInsets.only(bottom: 12),
              child: ListTile(
                title: Text(
                  task.title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(task.due),
                trailing: task.isStarred
                    ? const Icon(Icons.star, color: Colors.amber)
                    : null,
              ),
            ),
          );
        },
      ),
    );
  }
}