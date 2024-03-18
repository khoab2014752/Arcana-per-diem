import 'package:flutter/material.dart';
import 'package:flutter_application_test/gradient_container.dart';

void main() {
  runApp(  MaterialApp(
    home: Scaffold(
      
      body: GradientContainer( colors: const [Color.fromARGB(255, 9, 102, 123), Color.fromARGB(255, 121, 66, 147)]) ,
  )));
}

