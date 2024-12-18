import 'package:flutter/material.dart';

void main() {
  runApp(const SOSApp());
}

class SOSApp extends StatelessWidget {
  const SOSApp({super.key}); // Constructor marked as const

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SOS App',
      home: FirstScreen(), // const added here
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key}); // Constructor marked as const

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SecondScreen(), // const added here
              ),
            );
          },
          child: const Text(
            'SOS',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key}); // Constructor marked as const

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: const Center(
        child: Text(
          'SOS Alert Sent!',
          style: TextStyle(fontSize: 28, color: Colors.red),
        ),
      ),
    );
  }
}
