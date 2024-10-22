import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Affirmations"),
        ),
        body: AffirmationList(), 
      ),
    );
  }
}

class AffirmationCard extends StatelessWidget {
  const AffirmationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5, 
      margin: const EdgeInsets.all(10), 
      child: Column(
        mainAxisSize: MainAxisSize.min, 
        crossAxisAlignment: CrossAxisAlignment.center, 
        children: [
          Image.asset(
            'images/image1.jpg',
            height: 194,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),
          const Text(
            "Affirmation Title",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40, 
              fontWeight: FontWeight.bold, 
            ),
          ),
          const SizedBox(height: 10), 
        ],
      ),
    );
  }
}

class AffirmationList extends StatelessWidget {
  const AffirmationList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8), 
      children: [
        AffirmationCard(),
        AffirmationCard(),
        AffirmationCard(),
      ],
    );
  }
}
