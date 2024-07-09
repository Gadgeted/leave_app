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
        title: const Text('Leave Application'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$greeting, ${args['firstname']} ${args['lastname']}!',
              style:
                  const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20.0),
            Text(
              'Username: $username',
              style: const TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 20.0),
            Text(
              'Formatted Greeting: $formattedGreeting',
              style: const TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
