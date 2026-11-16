import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Column Widget App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFC8A2C8),
        foregroundColor: Colors.black87,
        title: const Text('Demo Column Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(onPressed: () {}, child: const Text('Button 1')),
            Container(height: 10),
            ElevatedButton(onPressed: () {}, child: const Text('Button 2')),
            Container(height: 10),
            ElevatedButton(onPressed: () {}, child: const Text('Button 3')),
            Container(height: 10),
            ElevatedButton(onPressed: () {}, child: const Text('Button 4')),
          ],
        ),
      ),
    );
  }
}
