import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter liquid swipe',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  final pages = const [
    Page(title: "Page 1", color: Colors.orange),
    Page(title: "Page 2", color: Colors.yellow),
    Page(title: "Page 3", color: Colors.blue),
    Page(title: "Page 4", color: Colors.green),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Liquid Swipe Exemple"),
        centerTitle: true,
      ),
      body: LiquidSwipe(
        pages: pages,
        enableLoop: true,
      ),
    );
  }
}

class Page extends StatelessWidget {
  final Color color;
  final String title;
  const Page({Key? key, required this.title, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
        child: Text(title),
      ),
    );
  }
}
