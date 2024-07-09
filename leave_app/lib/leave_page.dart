import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Import intl package for date formatting

class LeavePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Extract arguments passed from RegisterPage
    final Map args = ModalRoute.of(context)!.settings.arguments as Map;

    // Extract username from email (assuming email is in correct format)
    String username = args['email'].split('@')[0];

    // Get current time
    DateTime now = DateTime.now();

    // Define format for time-based greetings
    String greeting = '';
    if (now.hour < 12) {
      greeting = 'Good Morning';
    } else if (now.hour < 17) {
      greeting = 'Good Afternoon';
    } else {
      greeting = 'Good Evening';
    }

    // Format the greeting message using intl package
    String formattedGreeting =
        DateFormat.yMMMMd().format(now); // Example formatting

    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$greeting, ${args['firstname']} ${args['lastname']}!',
              style: const TextStyle(fontSize: 20.0),
            ),
            Text(
              'Username: $username',
              style: const TextStyle(fontSize: 14.0),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Formatted Greeting: $formattedGreeting',
              style: const TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 20.0),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Serial Number',
                prefixIcon: Icon(Icons.confirmation_number),
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Serial Number is required';
                }
                // Add additional validation if needed
                return null;
              },
            ),
            const SizedBox(height: 10.0),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Leave Type',
                prefixIcon: Icon(Icons.event_note),
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Leave Type is required';
                }
                // Additional validation if needed
                return null;
              },
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Forms Submittion goes here
              },
              child: const Text('Submit Leave Application'),
            ),
          ],
        ),
      ),
    );
  }
}
