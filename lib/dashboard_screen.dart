import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Welcome, User', style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Bluetooth Status:', style: TextStyle(fontSize: 16)),
                Text('Connected', style: TextStyle(fontSize: 16, color: Colors.green)),
              ],
            ),
            SizedBox(height: 20),
            Text('Heart Rate: 75 bpm', style: TextStyle(fontSize: 16)),
            Text('Steps: 1200', style: TextStyle(fontSize: 16)),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/history');
              },
              child: Text('View History',style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
