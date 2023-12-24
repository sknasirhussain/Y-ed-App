// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class logoScreen extends StatelessWidget {
  const logoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset("assets/Y-ed_Logo_Cropped.png"),),
    );
  }
}
