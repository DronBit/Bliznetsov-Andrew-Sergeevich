import 'package:flutter/material.dart';
import 'package:new_proj/UI/homep.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NeTinder',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.pink.shade50,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'NeTinder'),
      debugShowCheckedModeBanner: false,
    );
  }
}