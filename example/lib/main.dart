import 'package:awesome_navigation_bar/awesome_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0; // Initial index

  void _onNavigationBarItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _getBodyContent(_currentIndex),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your logic for the floating action button here
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: AwesomeNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onNavigationBarItemTapped,
      ),
    );
  }

  Widget _getBodyContent(int currentIndex) {
    // Add your logic for different pages based on the currentIndex
    switch (currentIndex) {
      case 0:
        return const Center(
          child: Text('Home Page'),
        );
      case 1:
        return const Center(
          child: Text('Template Page'),
        );
      case 2:
        return const Center(
          child: Text('Top Page'),
        );
      case 3:
        return Container(); // Your custom page for index 3
      case 4:
        return const Center(
          child: Text('Settings Page'),
        );
      default:
        return Container();
    }
  }
}
