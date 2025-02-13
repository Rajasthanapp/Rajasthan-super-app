 
import 'package:flutter/material.dart';

void main() {
  runApp(RajasthanSuperApp());
}

class RajasthanSuperApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rajasthan Super App',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Rajasthan Super App')),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(10),
        children: [
          _buildCategoryItem(context, 'Movie Tickets', Icons.movie, DummyScreen('Movie Tickets')),
          _buildCategoryItem(context, 'Book a Cab', Icons.local_taxi, DummyScreen('Book a Cab')),
          _buildCategoryItem(context, 'Important Locations', Icons.map, DummyScreen('Important Locations')),
          _buildCategoryItem(context, 'Events & Festivals', Icons.event, DummyScreen('Events & Festivals')),
        ],
      ),
    );
  }

  Widget _buildCategoryItem(BuildContext context, String title, IconData icon, Widget screen) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => screen)),
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: Colors.orange),
            SizedBox(height: 10),
            Text(title, textAlign: TextAlign.center, style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}

class DummyScreen extends StatelessWidget {
  final String title;
  DummyScreen(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('$title Feature Coming Soon')),
    );
  }
}
