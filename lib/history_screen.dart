// history_screen.dart
import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  final List<Map<String, String>> records = [
    {'date': '2024-12-20', 'heartRate': '72 bpm', 'steps': '1500'},
    {'date': '2024-12-21', 'heartRate': '80 bpm', 'steps': '2000'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('History')),
      body: ListView.builder(
        itemCount: records.length,
        itemBuilder: (context, index) {
          final record = records[index];
          return ListTile(
            title: Text('Date: ${record['date']}'),
            subtitle: Text('Heart Rate: ${record['heartRate']} | Steps: ${record['steps']}'),
          );
        },
      ),
    );
  }
}
