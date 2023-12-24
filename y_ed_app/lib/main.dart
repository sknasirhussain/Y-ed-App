import 'package:flutter/material.dart';
import 'screens/Welcome.dart';
import 'screens/logo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool splash = true;

  loadHome() {
    Future.delayed(Duration(seconds: 3), ()
    {
      setState(() {
        splash = false;
      });
    });
  }
  // This widget is the root of your application.
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadHome();
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Y-ED App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: splash ? logoScreen() : Welcome(),
    );
  }
}
