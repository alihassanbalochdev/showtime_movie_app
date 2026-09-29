import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShowTime App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), // Fixed missing class reference
        useMaterial3: true,
      ),
      home: const Home(), // Fixed from Placeholder() to your custom Home widget
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _movieList = <String>[
    "Avengers: Age of Ultron",
    "Avengers: Infinity War",
    "Avengers: Endgame",
    "Spider-Man: Brand New Day",
    "Avengers: Endgame Encore",
    "Avengers: Doomsday",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies'),
      ),
      body: ListView.builder(
        itemCount: _movieList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_movieList[index]), // Fixed to display items from the list using the index
          );
        },
      ),
    );
  }
}