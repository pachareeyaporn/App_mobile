import 'package:flutter/material.dart';
import 'FoodPage.dart';
import 'SnackPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.blue[100],
      title: 'แนะนำอาหารและของว่าง',
      theme: ThemeData(primarySwatch: Colors.green),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/food': (context) => const FoodPage(),
        '/snacks': (context) => const SnackPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        title: const Text('แนะนำอาหารและของว่าง'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/food');
              },
              child: const Text('อาหาร'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/snacks');
              },
              child: const Text('ของว่าง'),
            ),
          ],
        ),
      ),
    );
  }
}
