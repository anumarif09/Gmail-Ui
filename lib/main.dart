import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Name: Anum Arif
// Roll Number: 2380227
// Assignment: Gmail UI

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GmailUI(),
    );
  }
}

class GmailUI extends StatelessWidget {
  const GmailUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Gmail"),
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 15),
          Icon(Icons.more_vert),
          SizedBox(width: 10),
        ],
      ),
      body: ListView(
        children: const [
          EmailTile(
            sender: "Ali Khan",
            subject: "Assignment Submission",
            message: "Please submit your assignment before 5 PM.",
            time: "10:30 AM",
          ),
          Divider(),
          EmailTile(
            sender: "University",
            subject: "Fee Reminder",
            message: "Your semester fee is due next week.",
            time: "Yesterday",
          ),
          Divider(),
          EmailTile(
            sender: "Flutter Team",
            subject: "Welcome to Flutter",
            message: "Start building beautiful apps today!",
            time: "Mon",
          ),
          Divider(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {},
        child: const Icon(Icons.edit),
      ),
    );
  }
}

class EmailTile extends StatelessWidget {
  final String sender;
  final String subject;
  final String message;
  final String time;

  const EmailTile({
    super.key,
    required this.sender,
    required this.subject,
    required this.message,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Colors.red,
        child: Icon(Icons.person, color: Colors.white),
      ),
      title: Text(sender, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(subject, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(message, maxLines: 1, overflow: TextOverflow.ellipsis),
        ],
      ),
      trailing: Text(time),
    );
  }
}
